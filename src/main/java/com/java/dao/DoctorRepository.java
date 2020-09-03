package com.java.dao;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.java.dto.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer> {

	
}
