package com.java.controller;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;


import org.springframework.stereotype.Component;

@Component
public class LocalDateEditor extends PropertyEditorSupport{
	
	//form is coming as String---> LocalDate
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(LocalDate.parse(text));
		
	}

		//when from java---> form {LocalDate -> String}
	@Override
	public String getAsText() {
		LocalDate value = (LocalDate) getValue();
		return value.toString();
	}

}