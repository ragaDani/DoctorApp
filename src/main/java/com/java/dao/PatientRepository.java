package com.java.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.java.dto.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer> {

}
