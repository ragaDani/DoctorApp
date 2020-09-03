package com.java.dto;


import java.util.HashSet;

import java.util.Set;

import javax.persistence.ElementCollection;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;

import lombok.Data;
@Entity
@Data
public class Doctor {
		@Id @GeneratedValue
		int id;
		@NotEmpty
		String doctor_name;
		@ElementCollection
		Set<String> qualifications = new HashSet<String>();
		@ElementCollection
		Set<String> specialty = new HashSet<String>();
		int yearsOfExp;
		boolean verified;
		String description;

		int rating;
		@OneToOne
		Address address;//aggregation; composition
		
		@OneToOne
		AvailableTime availableTime;
		
		



}