package com.main.services2;

import com.main.employee_entity.Employee;
import com.main.user_entity.User;

public interface UserService  {
public boolean AddUser(User user);
boolean isAadhaarRegistered(String aadhaar);
boolean isEmailRegistered(String email);



}
