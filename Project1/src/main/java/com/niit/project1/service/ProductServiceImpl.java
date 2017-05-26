package com.niit.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.project1.dao.ProductDao;
import com.niit.project1.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired	
	private ProductDao productDao;
	public void saveOrUpdateProduct(Product product) {
		   productDao.saveOrUpdateProduct(product);
			
		}
		public List<Product> getAllProducts() {
			return productDao.getAllProducts();
		}
		public Product getProductById(int id) {
			return productDao.getProductById(id);
		}
		public void deleteProduct(int id) {
			productDao.deleteProduct(id);
			
		}
}
