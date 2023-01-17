package com.example.nordeacodingtask.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Currency {

    @Id
    private Long id;
    private String isoCode;
    private String countryName;
}
