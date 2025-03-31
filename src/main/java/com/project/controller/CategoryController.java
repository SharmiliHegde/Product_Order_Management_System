package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Category;
import com.project.model.User;
import com.project.repository.Categoryrepo;


@Controller
public class CategoryController {
	
	@Autowired
	Categoryrepo urepo;
	

	public String insertation1(@ModelAttribute Category ob)
	{
		urepo.save(ob);
		return "CategoryInsertion.jsp"; 
	}
	

    @PostMapping("/Categoryinsertation")
    public String insertation(@ModelAttribute Category user) {
        urepo.save(user);
        return "redirect:/success1"; 
    }
    
    
}
    
  
      