package com.java.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import javax.validation.constraints.NotNull;


import lombok.Data;

@Data
@Entity
public class Address{
	@Id
	@GeneratedValue
	int id;
	int hno;
	String street,city, state, country;
	@NotNull
	int zipcode;
	
}
