/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import models.Conexion;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author rodrigo
 */
@Controller
@RequestMapping("list.htm")
public class ListController {
    
    private JdbcTemplate jdbcTemplate;
    
    public ListController(){
        Conexion con = new Conexion();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView list(){
        
        ModelAndView mav = new ModelAndView();
        String sqlcmd="select * from usuarios";
        List datos = this.jdbcTemplate.queryForList(sqlcmd);
        mav.addObject("datos",datos);
        mav.setViewName("list");
        return mav;
    }
}
