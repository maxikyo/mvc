package com.maxikyo.spring.mvc.validation;

import javax.validation.Constraint;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

//создание новой аннотации
@Target(ElementType.FIELD) //-указывает на ту область, на которую будет применятся
@Retention(RetentionPolicy.RUNTIME) //-работает вплоть до выполнения кода
@Constraint(validatedBy = CheckEmailValidator.class) //-этот класс обрабатывает анотацию
public @interface CheckEmail {
}
