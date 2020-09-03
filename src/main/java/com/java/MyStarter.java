package com.java;




import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.FilterRegistrationBean;

import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.filter.DelegatingFilterProxy;

@SpringBootApplication
@EnableAspectJAutoProxy(proxyTargetClass = false)
@EnableTransactionManagement(proxyTargetClass = false)
@EnableJpaRepositories(basePackages = "com.java.dao")
@EntityScan(basePackages = "com.java.dto")
@PropertySource(value="classpath:application-${profile}.properties")
public class MyStarter {
//	@PersistenceContext
//	private EntityManager entityManager;
	
	public static void main(String[] args) {
		SpringApplication.run(MyStarter.class, args);
	}
	public FilterRegistrationBean logFilter() {
		DelegatingFilterProxy delegatingFilterProxy = new DelegatingFilterProxy();
		FilterRegistrationBean registrationBean = new FilterRegistrationBean();
		registrationBean.setName("logFilter");
		registrationBean.addUrlPatterns("/*");
		return registrationBean;
	}
//	@Bean
//	public HibernateTemplate template() throws IOException {
//		HibernateTemplate template = new HibernateTemplate();
////		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("org.hibernate.doctorapp.jpa");
//		template.setCheckWriteOperations(false);
//		template.setSessionFactory(entityManager.unwrap(SessionFactory.class));
//		return template;
//	}
	
}
