package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.User;
import com.project.repository.Orderrepo;

@Controller
public class OrderController {
	
	@Autowired
	Orderrepo urepo;
	
	@RequestMapping("/Orderinsertation")
	public String insertation(@ModelAttribute User ob)
	{
		urepo.save(ob);
		return "success1.jsp";
	}
	

	@RequestMapping("/fetch")
	public String datafetch(Model data)
	{
		List<User> al=urepo.findAll();
		System.out.println(al);
		data.addAttribute("data",al);
		
		return "DataFetch.jsp";
	}


	@RequestMapping("/Delete/{id}")
	public String delete(@PathVariable int id)
	{
		urepo.deleteById(id);
		return "redirect:/fetch";
	}
	

	@RequestMapping("{id}")
	public String update(@PathVariable int id,Model m)
	{
		User ob=urepo.findById(id).orElse(null);
		m.addAttribute("data",ob);
		return "edit.jsp";
	}
	
	@RequestMapping("/edit/{id}")
	public String update(@PathVariable int id,@ModelAttribute User ee)
	{
		User ob=urepo.findById(id).orElse(null);
		if(ob!=null)
		{
			ob.setName(ee.getName());
			ob.setBrandname(ee.getBrandname());
			ob.setCategory(ee.getCategory());
			urepo.save(ob);
		}
		return "redirect:/fetch";
	}
	
}

