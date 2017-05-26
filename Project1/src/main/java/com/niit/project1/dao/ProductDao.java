package com.niit.project1.dao;

import java.util.List;

import com.niit.project1.model.Product;

public interface ProductDao {
	void saveOrUpdateProduct(Product product);
	
	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);
}
