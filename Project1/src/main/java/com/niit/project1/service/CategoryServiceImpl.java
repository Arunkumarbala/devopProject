package com.niit.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.project1.dao.CategoryDao;
import com.niit.project1.model.Category;
@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;
	public List<Category> getAllCategories() {
		return categoryDao.getAllCategories();
	}

}
