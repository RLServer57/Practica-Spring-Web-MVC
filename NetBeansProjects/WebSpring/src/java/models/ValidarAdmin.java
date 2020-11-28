/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 *
 * @author rodrigo
 */
public class ValidarAdmin implements Validator{
    
    @Override
    public boolean supports(Class<?> type) {
        return Administradores.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Administradores admins = (Administradores)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre", "required.nombre", "Campo Nombre obliatorio.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "contraseña", "required.contraseña", "Campo Contraseña obliatorio.");
    }
    
}
