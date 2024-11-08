package com.main.services;

import com.main.employee_entity.Employee;

public interface EmployeeService  {
public boolean AddEmployee(Employee emp);
public Employee Login_emp (String email,String password);
boolean isEmailRegistered(String email);
}
