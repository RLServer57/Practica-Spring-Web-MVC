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
public class UsuariosValidar implements Validator{
    
    private static final String EMAIL_PATTERN ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                        + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private Pattern pattern;
    private Matcher matcher;
    
    @Override
    public boolean supports(Class<?> type) {
        return Usuarios.class.isAssignableFrom(type);
    }
    
    @Override
    public void validate(Object o, Errors errors) {
        Usuarios usuarios = (Usuarios)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required.nombre", "Campo Nombre obliatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo", "required.correo", "Campo Email obliatorio.");
        
        if(!(usuarios.getCorreo() != null && usuarios.getCorreo().isEmpty())){
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(usuarios.getCorreo());
            if(!matcher.matches()){
                errors.rejectValue("correo", "correo.incorrect",
                        "El Correo "+usuarios.getCorreo()+" no es valido.");
            }
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telefono", "required.telefono", "Campo Telefono obliatorio.");
    }
    
}
