/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import models.Administradores;
import models.Conexion;
import models.ValidarAdmin;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
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
@RequestMapping("login.htm")
public class LoginController {

    private JdbcTemplate jdbcTemplate;
    private ValidarAdmin validarAdmin;

    public LoginController() {
        this.validarAdmin = new ValidarAdmin();
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView login() {

        ModelAndView mav = new ModelAndView();
        mav.setViewName("login");
        mav.addObject("logadmin", new Administradores());
        return mav;
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView form(
            @ModelAttribute("logadmin") Administradores admon,
            BindingResult result,
            SessionStatus status,
            HttpServletRequest request
    ) {
        String administrador = request.getParameter("nombre");
        String contrasena = request.getParameter("contraseña");
        Administradores sAdmin = this.selectAdmin(administrador, contrasena);
        ModelAndView mav = new ModelAndView();

        this.validarAdmin.validate(admon, result);
        if (result.hasErrors()) {
            mav.setViewName("login");
            return mav;
        }

        if (!(administrador.equals(sAdmin.getNombre()) && !(contrasena.equals(sAdmin.getContraseña())))) {
            mav.setViewName("login");
            result.rejectValue("nombre", "incorrect.nombre", "¡¡¡A ocurrido un error!!! El nombre y/o la contraseña son incorrectos.");
            return mav;
        }
        
        mav.setViewName("home");
        mav.addObject("nombre", admon.getNombre());
        return mav;
    }

    public Administradores selectAdmin(String nombre, String contraseña) {
        final Administradores admin = new Administradores();
        String q = "select nombre,contraseña from administradores"
                + " where nombre='" + nombre + "' and contraseña=aes_encrypt('" + contraseña + "','3kgta2');";
        return (Administradores) jdbcTemplate.query(q, new ResultSetExtractor<Administradores>() {
            public Administradores extractData(ResultSet rs) throws SQLException, DataAccessException {
                if (rs.next()) {
                    admin.setNombre(rs.getString("nombre"));
                    admin.setContraseña(rs.getString("contraseña"));
                }
                return admin;
            }
        });
    }

}
