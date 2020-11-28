/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import models.Conexion;
import models.Usuarios;
import models.UsuariosValidar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author rodrigo
 */
@Controller
@RequestMapping("add.htm")
public class AddController {
    
    UsuariosValidar usuariosValidar;
    private JdbcTemplate jdbcTemplate;
    
    public AddController(){
        this.usuariosValidar = new UsuariosValidar();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView form() {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("add");
        mav.addObject("usuarios", new Usuarios());
        
        return mav;
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("usuarios") Usuarios u,
            BindingResult result,
            SessionStatus status
    ){
        this.usuariosValidar.validate(u, result);
        if (result.hasErrors()) {
            //Regresa al formulario por el error de datos
            ModelAndView mav = new ModelAndView();
            mav.setViewName("add");
            mav.addObject("usuarios", new Usuarios());
            return mav;
        } else {
            //Muestra que los datos sean correctos
            this.jdbcTemplate.update("insert into usuarios (nombre,correo,telefono)"
                    + "values(?,?,?)",u.getNombre(),u.getCorreo(),u.getTelefono());
            return new ModelAndView("redirect:/list.htm");
        }
    }
}
