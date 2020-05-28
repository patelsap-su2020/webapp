package com.webapp.assignment.Service;

import com.webapp.assignment.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator {

    @Autowired
    private Userservice userservice;
    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailid", "NotEmpty");

        if (userservice.findUserByEmail(user.getEmailid()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }
    }
}
