package com.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.employee_entity.Employee;
import com.main.repo.MyRepository;
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    MyRepository repo;

    @Override
    public boolean AddEmployee(Employee emp) {
        try {
            repo.save(emp);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            ;
            return false;
        }
    }

}
