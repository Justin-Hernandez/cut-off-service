package com.example.nordeacodingtask.controller;

import com.example.nordeacodingtask.entity.Currency;
import com.example.nordeacodingtask.entity.CutOffTime;
import com.example.nordeacodingtask.repository.CurrencyRepository;
import com.example.nordeacodingtask.repository.CutOffTimeRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.security.InvalidParameterException;
import java.time.LocalDate;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1")
public class CutOffTimeController {

    @Autowired
    CurrencyRepository currencyRepository;

    @Autowired
    CutOffTimeRepository cutOffTimeRepository;

    @GetMapping("/cut-off/{date}/{currencyA}/{currencyB}")
    public CutOffTimeDTO getCutOffTime(@PathVariable @DateTimeFormat(iso=DateTimeFormat.ISO.DATE) LocalDate date,
                                    @PathVariable String currencyA,
                                    @PathVariable String currencyB) {

        CutOffTimeDTO cutOffTimeDTO = new CutOffTimeDTO();

        Optional<Currency> optionalCurrencyA = currencyRepository.findByIsoCode(currencyA);
        Optional<Currency> optionalCurrencyB = currencyRepository.findByIsoCode(currencyB);

        // check if currency A is supported
        if(optionalCurrencyA.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    "Currency '" + currencyA + "' does not exist or is not currently supported.",
                    new EntityNotFoundException());
        }

        // check if currency B is supported
        if(optionalCurrencyB.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    "Currency '" + currencyB + "' does not exist or is not currently supported.",
                    new EntityNotFoundException());
        }

        // if the day informed is before the current day, error
        if(date.isBefore(LocalDate.now())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "The day must be the current day (" + LocalDate.now() + ") or later.",
                    new InvalidParameterException());
        }

        // if the date is after tomorrow, then is always possible to trade
        if(date.isAfter(LocalDate.now().plusDays(1))) {
            cutOffTimeDTO.setTime("always possible");
        }

        CutOffTime cuttOffTimeCurrencyA = cutOffTimeRepository.findByCutOffDateAndCurrency(date, optionalCurrencyA.get());
        CutOffTime cuttOffTimeCurrencyB = cutOffTimeRepository.findByCutOffDateAndCurrency(date, optionalCurrencyB.get());

        if(cuttOffTimeCurrencyA.isNeverPossible() || cuttOffTimeCurrencyB.isNeverPossible()) {

            // if it's never possible to trade one of the currencies that day
            cutOffTimeDTO.setTime("never possible");

        } else if(cuttOffTimeCurrencyA.isAlwaysPossible() && cuttOffTimeCurrencyB.isAlwaysPossible()) {

            // if for both currencies it's always possible to trade that day
            cutOffTimeDTO.setTime("always possible");

        } else if(cuttOffTimeCurrencyA.isAlwaysPossible()){

            // it's always possible to trade currencyA but currencyB is limited
            cutOffTimeDTO.setTime(cuttOffTimeCurrencyB.getCutOffTime().toString());

        }else if(cuttOffTimeCurrencyB.isAlwaysPossible()) {

            // it's always possible to trade currencyB but currencyA is limited
            cutOffTimeDTO.setTime(cuttOffTimeCurrencyA.getCutOffTime().toString());
        } else if (cuttOffTimeCurrencyA.getCutOffTime().compareTo(cuttOffTimeCurrencyB.getCutOffTime()) <= 0) {

            // if the window to trade currencyA <= currencyB
            cutOffTimeDTO.setTime(cuttOffTimeCurrencyA.getCutOffTime().toString());
        }else {

            // if the window to trade currencyB <= currencyA
            cutOffTimeDTO.setTime(cuttOffTimeCurrencyB.getCutOffTime().toString());
        }

        return cutOffTimeDTO;
    }
}
