package com.java.service;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Aspect
@Service
public class LoggingService {

	Logger logger = LoggerFactory.getLogger(LoggingService.class);
	
	@Around("execution(public * *..RegisterDoctor.*(..)), public * *..BookAppointment.*(..))")
	private Object log(ProceedingJoinPoint jp) throws Throwable {
		logger.info("Before method execution: "+jp.getSignature());
		Object o = jp.proceed();
		logger.info("After method execution :"+jp.getSignature());
		return o;

	}
}
