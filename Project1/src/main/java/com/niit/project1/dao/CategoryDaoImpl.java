package com.niit.project1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.project1.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	private SessionFactory sessionFactory;
		public List<Category> getAllCategories() {
		    Session session=sessionFactory.openSession();
		    Query query=session.createQuery("from Category");
		    List<Category> categories=query.list();
		    session.close();
		    return categories;
		}
}