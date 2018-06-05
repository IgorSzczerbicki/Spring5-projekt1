package com.nauka.spring5.projekt1.DAO;

import java.util.List;
import com.nauka.spring5.projekt1.domain.Customer;

public interface CustomerDAO {
	
	public List<Customer> getCustomers();
}