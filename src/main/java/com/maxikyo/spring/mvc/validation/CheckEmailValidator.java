package com.maxikyo.spring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
//дженерики<...> 1 - анотация, 2 - тип данных
public class CheckEmailValidator implements ConstraintValidator<CheckEmail, String> {
    private String endOfEmail;

    @Override
    public void initialize(CheckEmail checkEmail) {
        endOfEmail = checkEmail.value();
    }

    @Override
    //business logic!!!
    public boolean isValid(String enteredValue
            , ConstraintValidatorContext constraintValidatorContext) {
        //tru если соответсвует xyz.com/false если нет
        return enteredValue.endsWith(endOfEmail);
    }
}
