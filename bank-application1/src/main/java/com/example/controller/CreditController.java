// CreditController.java
package com.example.controller;

import com.example.exception.ResourceNotFoundException;
import com.example.Entity.Credit;
import com.example.repository.CreditRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/credits")
public class CreditController {

    @Autowired
    private CreditRepository creditRepository;

    @GetMapping
    public List<Credit> getAllCredits() {
        return creditRepository.findAll();
    }


    @GetMapping("/{id}")
    public ResponseEntity<Credit> getCreditById(@PathVariable Long id) {
        Credit credit = creditRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Credit not found"));
        return ResponseEntity.ok().body(credit);
    }

    @PostMapping
    public Credit createCredit(@RequestBody Credit credit) {
        return creditRepository.save(credit);
    }

    @PutMapping("/{id}")
    public Credit updateCredit(@PathVariable Long id, @RequestBody Credit creditDetails) {
        Credit credit = creditRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Credit not found"));
        credit.setLimit(creditDetails.getLimit());
        credit.setInterestRate(creditDetails.getInterestRate());
        return creditRepository.save(credit);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCredit(@PathVariable Long id) {
        Credit credit = creditRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Credit not found"));
        creditRepository.delete(credit);
        return ResponseEntity.ok().build();
    }
}
