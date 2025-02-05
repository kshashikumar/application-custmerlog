package com.app.controller;

import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.LogModel;
import com.app.repo.CustomerLogRepo;

@Controller
public class CustomerLogController {
     
	@Autowired
	private CustomerLogRepo customerLogRepo;
	private String loginname;
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
//	@GetMapping("/checkin")
//	public String checkedin() {
//		return "checkedin";
//	}

	@PostMapping("/checkin")
	public ModelAndView checkedIn(@RequestParam("name") String name) {
		ModelAndView modelAndView = new ModelAndView("checkedin");
	    
		this.loginname=name;
	LogModel logModel=new LogModel();
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
	logModel.setDate(formatter.format(date));
	logModel.setName(loginname);
	logModel.setTime(LocalTime.now().toString());
	logModel.setId(name, LocalTime.now().toString());
	logModel.setLogType("IN");
	customerLogRepo.save(logModel);
	return modelAndView;
	}
	

	@PostMapping("/checkout")
	public ModelAndView checkedOut() {
		ModelAndView modelAndView = new ModelAndView("home");
	    
	LogModel logModel=new LogModel();
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
	logModel.setDate(formatter.format(date));
	logModel.setTime(LocalTime.now().toString());
	logModel.setName(this.loginname);
	logModel.setId(loginname,LocalTime.now().toString() );
	logModel.setLogType("OUT");
	customerLogRepo.save(logModel);
	this.loginname="";
	return modelAndView;
	}
	

	@GetMapping("/getalllogs")
    public ModelAndView getAllLogs(){
		ModelAndView modelAndView = new ModelAndView("checkedin");
		modelAndView.addObject("data", customerLogRepo.findAll());
    	return modelAndView;
    }
	
	@GetMapping("/getlogbydate")
	public ModelAndView getLogByDate(@RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") Date date){
		ModelAndView modelAndView = new ModelAndView("checkedin");
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
		    String strDate = formatter.format(date);  
		modelAndView.addObject("data", customerLogRepo.findAllByDate(strDate));
		return modelAndView;
	}

	
	

}
