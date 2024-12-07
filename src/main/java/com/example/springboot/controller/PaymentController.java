package com.example.springboot.controller;

import com.example.springboot.service.PaymentService;
import com.example.springboot.model.Payments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/payments")
public class PaymentController {

    @Autowired
    private PaymentService paymentService;

    @GetMapping
    public String showPaymentsPage(Model model) {
        List<Payments> payments = paymentService.getAllPayments();
        model.addAttribute("payments", payments);
        return "payments";
    }

    @PostMapping
    public String submitPayment(@RequestParam("userId") Long userId,
                                 @RequestParam("loanId") Long loanId,
                                 @RequestParam("amount") Double amount,
                                 Model model) {
        // Process payment (set status to "Paid")
        Payments newPayment = new Payments(userId, loanId, amount, "Paid");
        paymentService.savePayment(newPayment);
        
        // Add success message
        model.addAttribute("successMessage", "Payment done successfully!");

        // Redirect back to the payments page to see the updated list
        return "redirect:/payments";
    }
}
