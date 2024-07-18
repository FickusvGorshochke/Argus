
package com.example.Entity;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
public class Credit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private BigDecimal limit_amount;
    private BigDecimal interestRate;



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public BigDecimal getLimit() {
        return limit_amount;
    }

    public void setLimit(BigDecimal limit) {
        this.limit_amount = limit_amount;
    }

    public BigDecimal getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(BigDecimal interestRate) {
        this.interestRate = interestRate;
    }
}
