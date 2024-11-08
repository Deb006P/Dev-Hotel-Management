package com.main.services2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.main.repo.UserRepo;
import com.main.user_entity.User;
@Service
public class ImplUserService implements UserService {
    @Autowired
    UserRepo urepo;

    @Override
    public boolean AddUser(User user) {
        try {
                    urepo.save(user);
                    return true;
                } catch (Exception e) {
                    e.printStackTrace();
                    
                    return false;
                }
    }

    @Override
    public boolean isAadhaarRegistered(String aadhaar) {
        // TODO Auto-generated method stub
        return urepo.findByAadhaar(aadhaar) != null;    }
        @Override
        public boolean isEmailRegistered(String email) {
            // TODO Auto-generated method stub
            return urepo.findByEmail(email) != null;    }

}
