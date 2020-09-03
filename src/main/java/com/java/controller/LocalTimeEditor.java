package com.java.controller;

import java.beans.PropertyEditorSupport;

import java.time.LocalTime;

import org.springframework.stereotype.Component;

@Component
public class LocalTimeEditor extends PropertyEditorSupport{
	
	//form is coming as String---> LocalDate
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		setValue(LocalTime.parse(text));
		
	}

		//when from java---> form {LocalDate -> String}
	@Override
	public String getAsText() {
		LocalTime value = (LocalTime) getValue();
		return value.toString();
	}

}