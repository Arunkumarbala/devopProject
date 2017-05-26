package com.niit.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.project1.model.Customer;
import com.niit.project1.dao.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;

	public void saveCustomer(Customer customer) {
		customerDao.saveCustomer(customer);
	}

	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}

}
