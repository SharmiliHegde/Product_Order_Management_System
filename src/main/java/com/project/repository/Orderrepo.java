package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.model.User;

public interface Orderrepo extends JpaRepository<User, Integer> {

	User findByName(String name);
}
