package com.main.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.main.employee_entity.Employee;
import com.main.user_entity.User;
import java.util.List;


public interface UserRepo extends JpaRepository<User,Integer> {
    User findByEmail(String email);
    User findByAadhaar(String aadhaar);

    }
