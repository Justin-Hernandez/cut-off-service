package com.example.nordeacodingtask.repository;

import com.example.nordeacodingtask.entity.Currency;
import com.example.nordeacodingtask.entity.CutOffTime;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDate;
import java.util.Optional;

public interface CutOffTimeRepository extends JpaRepository<CutOffTime, Long> {

    CutOffTime findByCutOffDateAndCurrency(LocalDate date, Currency currency);
}
