package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class WelcomeController {

	@GetMapping
	public String getData() {
		System.out.println("Context path / is calling WelcomeController");
		return "welcome";
	}
}