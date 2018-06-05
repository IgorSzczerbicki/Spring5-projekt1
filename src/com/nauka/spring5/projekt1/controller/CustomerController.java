package com.nauka.spring5.projekt1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.nauka.spring5.projekt1.DAO.CustomerDAO;
import com.nauka.spring5.projekt1.domain.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerDAO customerDAO;

	@GetMapping("/list")
	public String listCustomers(Model model) {
		List<Customer> customers = customerDAO.getCustomers();
		model.addAttribute("customers", customers);
		return "customer-list";
	}
}