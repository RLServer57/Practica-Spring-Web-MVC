/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author rodrigo
 */
public class RegistroAdminValidar implements Validator {

    private static final String EMAIL_PATTERN ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                        + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private Pattern pattern;
    private Matcher matcher;
    
    @Override
    public boolean supports(Class<?> type) {
        return Administradores.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Administradores regAdmin=(Administradores)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required.nombre", "Campo Nombre obliatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "apellido", "required.apellido", "Campo Apellido obliatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "edad", "required.edad", "Campo Edad obliatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo", "required.correo", "Campo Email obliatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "contraseña", "required.contraseña", "Campo Contraseña obliatorio.");
        if(!(regAdmin.getCorreo() != null && regAdmin.getCorreo().isEmpty())){
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(regAdmin.getCorreo());
            if(!matcher.matches()){
                errors.rejectValue("correo", "correo.incorrect",
                        "El Correo no es valido.");
            }
        }
    }
}