package com.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.employee_entity.Employee;
import com.main.services.EmployeeService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class MyController {
    @Autowired
    EmployeeService Empserv;
    @GetMapping("/emp_login")
    public String OpenEmpLogin() {
        return "Employee_Login";
    }

    @GetMapping("/emp_reg")
    public String getMethodName(Model model) {
        model.addAttribute("user", new User());
        return "Reg_Employee";

    }
  @PostMapping("/register")
        public String SaveUserReg(@ModelAttribute("user") Employee emp, Model model){

           boolean status= Empserv.AddEmployee(emp);
if(status) {System.out.println("Register Successful");
model.addAttribute("SucMsg","Register Successful");
        }
else {
    System.out.println("Register Failed!!");
    model.addAttribute("FailMsg","Register Failed");
}
return "Reg_Employee";
}
    
}
