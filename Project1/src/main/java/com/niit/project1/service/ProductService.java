package com.niit.project1.service;

import java.util.List;

import com.niit.project1.model.Product;

public interface ProductService {
	void saveOrUpdateProduct(Product product);

	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);
}
