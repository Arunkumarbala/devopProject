package com.niit.project1.service;

import java.util.List;

import com.niit.project1.model.Customer;

public interface CustomerService {
	void saveCustomer(Customer customer);
	List<Customer> getCustomers();
}
