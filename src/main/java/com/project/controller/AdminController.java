package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.model.Admin;
import com.project.repository.AdminRepo;

@Controller
public class AdminController {
	

	@Autowired
	AdminRepo arepo;
	
    @RequestMapping("/")
	public String home()
	{
		return "AdminSingup.jsp";
	}
    
    @RequestMapping("/Singup")
    public String signup(@ModelAttribute Admin ob)
    {
    	arepo.save(ob);
    	
    	return "AdminLogin.jsp";
    	
    	
    }
    
    
    @RequestMapping("/getloginpage")
    public String loginpage()
    {
    	return "AdminLogin.jsp";
    }
    
    
    @RequestMapping("/login")
    public String login(@RequestParam String email,@RequestParam String password)
    {
    	Admin ob=arepo.findByEmail(email);
    
    	if(ob!=null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password))
    	{
    		
    		return "OrderInsertion.jsp";
    		//return "CategoryInsertion.jsp";
    		
    	}
    	else
    	{
    		return "AdminSingup.jsp";
    	}
    }
    
    
}
