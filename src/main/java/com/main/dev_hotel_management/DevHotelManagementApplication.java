package com.main.dev_hotel_management;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EntityScan("com.main.employee_entity,"+"com.main.user_entity")
@EnableJpaRepositories("com.main.repo")
@ComponentScan(basePackages = "com.main.controller,"+"com.main.employee_entity,"+"com.main.services,"+"com.main.services2")
@SpringBootApplication
public class DevHotelManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(DevHotelManagementApplication.class, args);
	}

}
