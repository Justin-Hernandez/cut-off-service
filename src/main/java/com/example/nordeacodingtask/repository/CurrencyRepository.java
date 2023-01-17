package com.example.nordeacodingtask.repository;

import com.example.nordeacodingtask.entity.Currency;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CurrencyRepository extends JpaRepository<Currency, Long> {

    Optional<Currency> findByIsoCode(String isoCode);
}
