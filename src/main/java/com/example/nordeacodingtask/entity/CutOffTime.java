package com.example.nordeacodingtask.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CutOffTime {

    @Id
    private Long id;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="currency_id")
    private Currency currency;

    private LocalDate cutOffDate;
    private LocalTime cutOffTime;
    private boolean neverPossible;
    private boolean alwaysPossible;
}
