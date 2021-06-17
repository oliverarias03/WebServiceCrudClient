/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

/**
 *
 * @author User
 */
public class HelloTag extends SimpleTagSupport{
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    @Override
    public void doTag() throws IOException{
        JspWriter out = getJspContext().getOut();
        out.print("Bienvenido, Que deseas realizar, "+name+" ?");
    }

}