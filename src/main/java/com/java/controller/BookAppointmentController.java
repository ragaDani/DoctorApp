package com.java.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.java.dao.DoctorRepository;
import com.java.dao.PatientRepository;

import com.java.dto.Patient;


@Controller
public class BookAppointmentController {
	@Autowired DoctorRepository rg;
	@Autowired PatientRepository bookAppointmentObject;
	@Autowired LocalDateEditor editor;
	
	@RequestMapping(value="/bookAppointment", method=RequestMethod.GET)
	public ModelAndView initBookAppointment() {
		ModelAndView model= new ModelAndView("bookappointment");
		
		model.addObject("message","Booking appointment");
		
		
		return model;
	}
	
	@RequestMapping(value="/bookAppointment",method=RequestMethod.POST)
	public ModelAndView bookAppointment(@ModelAttribute("patient") Patient patient,BindingResult result) {
		if(result.hasErrors()) {
			ModelAndView model1 = new ModelAndView("error");
			model1.addObject("message",result.getAllErrors().toString());
			return model1;
		}
		
		
		bookAppointmentObject.save(patient);
		ModelAndView model = new ModelAndView("completeappointment");
		return model;
		
	}
	@RequestMapping(value="/bookAppointmentRating",method=RequestMethod.POST)
	public ModelAndView bookAppointmentRating(@RequestParam ("rating") int rating,@RequestParam ("doctor_name") String name) {
				
		
		//reg.updateDoctorRatings(name, rating);
		ModelAndView model = new ModelAndView("completeappointmentfinal");
		return model;
		
	}
	
	@InitBinder
	public void init(WebDataBinder binder) {
		binder.registerCustomEditor(LocalDate.class, "dob", editor );
	}
}