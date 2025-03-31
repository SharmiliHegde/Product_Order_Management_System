package com.project.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "categories")
public class Category {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
	
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category categorys;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category getCategorys() {
		return categorys;
	}

	public void setCategorys(Category categorys) {
		this.categorys = categorys;
	}

	public Category(int id, String name, Category categorys) {
		super();
		this.id = id;
		this.name = name;
		this.categorys = categorys;
	}

	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", categorys=" + categorys + "]";
	}

	
    
	
    


}
