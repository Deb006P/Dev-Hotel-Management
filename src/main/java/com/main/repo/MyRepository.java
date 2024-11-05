package com.main.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.employee_entity.Employee;

public interface MyRepository extends JpaRepository<Employee,Integer> {

}
