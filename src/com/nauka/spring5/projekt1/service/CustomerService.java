package com.nauka.spring5.projekt1.service;

import java.util.List;
import com.nauka.spring5.projekt1.domain.Customer;

public interface CustomerService {
	public List<Customer> getCustomers();
	public void addCustomer(Customer customer);
}