package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.Category;
import com.project.model.User;

public interface Categoryrepo extends JpaRepository<Category, Integer> {

	User findByName(String name);

	void save(User ob);

		
	
}
