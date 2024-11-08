package com.main.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.employee_entity.Employee;
import com.main.user_entity.User;



public interface MyRepository extends JpaRepository<Employee,Integer> {
Employee findByEmail(String email);

// void save(User user);
}
