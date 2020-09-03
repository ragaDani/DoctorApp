package com.java.dto;

import java.time.LocalDate;

import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



import lombok.Data;

@Data
@Entity
public class Appointment{
	@Id
	@GeneratedValue
	int id;
	LocalDate appointmentDate;
	LocalTime startingTime;
	LocalTime endingTime;
	
}
