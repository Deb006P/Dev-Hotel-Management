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
import com.main.services2.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class MyController {
    @Autowired
    EmployeeService Empserv;

    @Autowired
UserService UserSer;

    @GetMapping("/emp_login")
    public String OpenEmpLogin(Model model) {
        model.addAttribute("user", new Employee());
        return "Employee_Login";
    }

    @GetMapping("/emp_reg")
    public String getMethodName(Model model) {
        model.addAttribute("user", new Employee());
        return "Reg_Employee";

    }

    @PostMapping("/register")
    public String SaveUserReg(@ModelAttribute("user") Employee emp, Model model) {

        if (Empserv.isEmailRegistered(emp.getEmail())) {
            model.addAttribute("FailMsg", "Email is already registered!");
            return "Reg_Employee";
        }
        boolean status = Empserv.AddEmployee(emp);
        if (status) {
            System.out.println("Register Successful");
            model.addAttribute("SucMsg", "Register Successful");
        } else {
            System.out.println("Register Failed!!");
            model.addAttribute("FailMsg", "Register Failed");
        }
        return "Reg_Employee";
    }

    @PostMapping("/login_emp")
    public String Elogin(@ModelAttribute("user") Employee emp, Model model) {
        Employee validEmp = Empserv.Login_emp(emp.getEmail(), emp.getPassword());

        if (validEmp != null) {
            System.out.println("Login Successful");
            return "EMain"; // Redirect to main page on success
        }

        else {
            System.out.println("Login Failed!");
            model.addAttribute("FailMsg", "Login Failed! Incorrect Email or Password");
            return "Employee_Login"; // Show login page with error message
        }
    }

    
    @GetMapping("/Add_Customer")
    public String AddNewCustomer(Model model) {
        model.addAttribute("user1", new User());
        return "NewCustomer";

    }


    @PostMapping("/userregister")
    public String adduserinfo(@ModelAttribute("user1") com.main.user_entity.User user, Model model) {

        // if (UserSer.isEmailRegistered(user.getEmail())) {
        //     model.addAttribute("FailMsg", "Email is already registered!");
        //     return "NewCustomer";
        // }
        // if (UserSer.isAadhaarRegistered(user.getAadhaar())) {
        //     model.addAttribute("FailMsg", "Aadhaar is already registered!");
        //     return "NewCustomer";
        // }
        boolean status = UserSer.AddUser (user);
        if (status) {
            System.out.println("Coustomer Register Successful");
            model.addAttribute("SucMsg", "Coustomer Register Successful");
        } else {
            System.out.println("Register Failed!!");
            model.addAttribute("FailMsg", "Coustomer Register Failed");
        }
        return "NewCustomer";
    }

   
}
