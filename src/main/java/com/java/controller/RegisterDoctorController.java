package com.java.controller;

import java.time.LocalDate;
import java.time.LocalTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.java.dao.DoctorRepository;
import com.java.dto.Doctor;


@Controller
public class RegisterDoctorController {
	@Autowired DoctorRepository rg;
	@Autowired LocalDateEditor dateEditor;
	@Autowired LocalTimeEditor timeEditor;
	@RequestMapping(value="/registerDoctor", method=RequestMethod.GET)
	public ModelAndView displayRegisterDoctor() {
		ModelAndView model= new ModelAndView("registerdoctor");
		
		model.addObject("message","Register Doctor");
		
		return model;
	}
	
	@RequestMapping(value="/registerDoctor",method=RequestMethod.POST)
	public ModelAndView registerDoctor(@ModelAttribute("doctor") Doctor doctor,BindingResult result) {
		if(result.hasErrors()) {
			ModelAndView model1 = new ModelAndView("error");
			model1.addObject("message",result.getAllErrors().toString());
			return model1;
		}
		
		rg.save(doctor);
		System.out.println(doctor.isVerified());
	
		ModelAndView model = new ModelAndView("completeregistration");
		
		return model;
		
	}
	
	@InitBinder
	public void init(WebDataBinder binder) {
		binder.registerCustomEditor(LocalDate.class, "availableDate", dateEditor );
		binder.registerCustomEditor(LocalTime.class, "availableTime.fromTime",timeEditor);
		binder.registerCustomEditor(LocalTime.class, "availableTime.toTime",timeEditor);
	}

}
