package com.example.springboot.repository;

import com.example.springboot.model.Payments;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface PaymentRepository extends JpaRepository<Payments, Long> {
    List<Payments> findByUserId(Long userId); // Fetch payments for a specific user

	}

