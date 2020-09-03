package com.java.dto;




import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.Email;

import javax.validation.constraints.NotEmpty;

import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import lombok.Data;

@Entity
@Data
@Component
public class Patient {
	@Id 
	@GeneratedValue
	int p_id;
	@NotEmpty(message="NotEmpty.patient.patient_name")
	String patient_name;
	@NotEmpty(message="NotEmpty.patient.patient_email")
	@Email
	String patient_email;
	@NotEmpty
	@Size(min=10,max=10,message="Size.patient.patient_contact")
	String patient_contact;
	
	@NotEmpty
	String doctor_name;
	String problem_description;
	
	@OneToOne
	Appointment appointment;
	
}
