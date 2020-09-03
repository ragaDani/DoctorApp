package com.java.dto;


import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.FutureOrPresent;

import lombok.Data;

@Entity
@Data
public class AvailableTime {
	@Id
	@GeneratedValue
	int id;
	@FutureOrPresent
	LocalTime fromTime;
	@FutureOrPresent
	LocalTime toTime;
	
}
