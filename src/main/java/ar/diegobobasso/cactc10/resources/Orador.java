/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ar.diegobobasso.cactc10.resources;

import java.io.Serializable;

/**
 *
 * @author User
 */
public class Orador implements Serializable {
    private String nombre;
    private String apellido;
    private String dni;
    private String fecha;
    private String tema;
    
    public Orador (String doc, String nom, String ape, String fec, String tem ) {
        nombre = nom;
        apellido = ape;
        dni = doc;
        fecha = fec;
        tema = tem;
    }
    public Orador () {
        nombre = " ";
        apellido = " ";
        dni = " ";
        fecha = " ";
        tema = " ";
    }
    public String getNombre(){
        return nombre;
    }
    public String getApellido(){
        return apellido;
    }
    public String getDni(){
        return dni;
    }
    public String getFecha(){
        return fecha;
    }
    public String getTema(){
        return tema;
    }
    
    
    public String asString(){
        
        StringBuffer buf = new StringBuffer();
        
        buf.append(nombre);
        buf.append(",");
        buf.append(apellido);
        buf.append(",");
        buf.append(dni);
        buf.append(",");
        buf.append(fecha);
        buf.append(",");
        buf.append(tema);
        buf.append("\n");
        
        return buf.toString();
        
    } 
    
}
