
package com.example.service;

import com.example.Entity.Client;
import com.example.Entity.ClientCredit;
import com.example.Entity.Credit;
import com.example.repository.ClientCreditRepository;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.*;

@Service
public class CreditService {

    @Autowired
    private ClientCreditRepository clientCreditRepository;

    public BigDecimal calculateTotalInterest(BigDecimal amount, BigDecimal rate, int months) {
        return amount.multiply(rate).multiply(BigDecimal.valueOf(months)).divide(BigDecimal.valueOf(100));
    }

    public List<Map<String, BigDecimal>> generatePaymentSchedule(BigDecimal amount, BigDecimal rate, int months) {
        List<Map<String, BigDecimal>> schedule = new ArrayList<>();
        BigDecimal monthlyPayment = amount.multiply(rate).divide(BigDecimal.valueOf(100)).add(amount.divide(BigDecimal.valueOf(months)));

        for (int i = 1; i <= months; i++) {
            Map<String, BigDecimal> payment = new HashMap<>();
            payment.put("paymentDate", BigDecimal.valueOf(i)); // Simplified for example
            payment.put("paymentAmount", monthlyPayment);
            payment.put("principalAmount", amount.divide(BigDecimal.valueOf(months)));
            payment.put("interestAmount", amount.multiply(rate).divide(BigDecimal.valueOf(100)));
            schedule.add(payment);
        }
        return schedule;
    }

    public ClientCredit createCreditOffer(Client client, Credit credit, BigDecimal amount) {
        int months = 12;
        BigDecimal totalInterest = calculateTotalInterest(amount, credit.getInterestRate(), months);
        List<Map<String, BigDecimal>> schedule = generatePaymentSchedule(amount, credit.getInterestRate(), months);

        ClientCredit clientCredit = new ClientCredit();
        clientCredit.setClient(client);
        clientCredit.setCredit(credit);
        clientCredit.setCreditAmount(amount);

        try {
            clientCredit.setPaymentSchedule( new ObjectMapper().writeValueAsString(schedule));
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }

        return clientCreditRepository.save(clientCredit);
    }
}
