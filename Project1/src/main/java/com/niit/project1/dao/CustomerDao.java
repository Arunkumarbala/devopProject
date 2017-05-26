package com.niit.project1.dao;

import java.util.List;

import com.niit.project1.model.Customer;

public interface CustomerDao {
	void saveCustomer(Customer customer);
	List<Customer> getCustomers();//duplicate username and email
}
