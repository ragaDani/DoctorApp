package com.java.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class SearchCriteria {
	@Id @GeneratedValue
	int id;
	String name;
	String location;
	String specialty;
}
