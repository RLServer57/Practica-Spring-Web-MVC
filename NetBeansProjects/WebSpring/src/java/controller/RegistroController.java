/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import models.Administradores;
import models.Conexion;
import models.RegistroAdminValidar;
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
@RequestMapping("registro.htm")
public class RegistroController {

    private RegistroAdminValidar registroValidar;
    private JdbcTemplate jdbcTemplate;

    public RegistroController() {
        this.registroValidar = new RegistroAdminValidar();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView registro() {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("registro");
        mav.addObject("registrar", new Administradores());

        return mav;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("registrar") Administradores regAdmon,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
        ModelAndView mav = new ModelAndView();
        this.registroValidar.validate(regAdmon, result);
        if (result.hasErrors()) {
            //Regresa al formulario por el error de datos
            mav.setViewName("registro");
            mav.addObject("registrar", new Administradores());
            return mav;
        } else {
            //Muestra que los datos sean correctos
            this.jdbcTemplate.update("insert into administradores (nombre,apellido,edad,correo,contraseña)"
                    + "values(?,?,?,?,aes_encrypt(?,'3kgta2'))", regAdmon.getNombre(), regAdmon.getApellido(), regAdmon.getEdad(),
                    regAdmon.getCorreo(), regAdmon.getContraseña());

            HttpSession session = request.getSession();
            session.setAttribute("username", regAdmon);

            return new ModelAndView("redirect:/Admin/home.htm");
        }
    }

    /*@ModelAttribute("paisLista")
    public Map<String, String> listadoPaises() {
        Map<String, String> pais = new LinkedHashMap<>();
        pais.put("1", "Mexico");
        pais.put("2", "Chile");
        pais.put("3", "Colombia");
        pais.put("4", "España");
        pais.put("5", "Panama");
        pais.put("6", "Argentina");
        return pais;
    }*/
}
