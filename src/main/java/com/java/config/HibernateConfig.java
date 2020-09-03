package com.java.config;

import java.io.IOException;
import java.util.Properties;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Environment;
import org.hibernate.dialect.Oracle12cDialect;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.java.dto.Address;
import com.java.dto.Appointment;
import com.java.dto.AvailableTime;
import com.java.dto.Doctor;
import com.java.dto.Patient;
import com.java.dto.SearchCriteria;

@EnableAutoConfiguration
public class HibernateConfig {
	// HibernateTemplate is a class of spring to manage hibernate
	
	
	
	
	
}