package com.example.springboot.service;


import com.example.springboot.model.Payments;
import com.example.springboot.repository.PaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    // Method to get all payments
    public List<Payments> getAllPayments() {
        return paymentRepository.findAll();  // This fetches all payments from the database
    }

	public void savePayment(Payments newPayment) {
		// TODO Auto-generated method stub
		
	}
}

