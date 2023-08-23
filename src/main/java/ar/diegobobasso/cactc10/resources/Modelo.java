/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ar.diegobobasso.cactc10.resources;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class Modelo {
    ArrayList <Orador> Oradores;
    
    public Modelo () {
        Oradores = new ArrayList<>();
        
    }
    
    public ArrayList<Orador> getOradores () throws SQLException {
 
        ConnectMySQL c = new ConnectMySQL("cacintegrador"); //mio
        Connection con = c.getConnection(); //mio
        
        
        String Query = "SELECT * FROM oradores;"  ;

        Statement st=con.createStatement();

        ResultSet rs=st.executeQuery(Query);
        
        
        while( rs.next() ) {
            String dni = rs.getString(1);
            String nombre = rs.getString(2);
            String apellido = rs.getString(3);
            String fecha = rs.getString(4);
            String tema = rs.getString(5);
            
            Oradores.add(new Orador(dni,nombre, apellido, fecha, tema));
            
        }
        
        c.setClose(); // mio
        
        return Oradores;

    }
    
    public Orador getOrador (String dni) {

        Orador aux = new Orador();
        // magia para ir a buscarlos a MySQL...
        
        try {
        
            ConnectMySQL c = new ConnectMySQL("cacintegrador"); //mio
            Connection con = c.getConnection(); //mio
            
            Oradores = getOradores(); 
            
            c.setClose(); // mio
            
        } catch (SQLException ex) {
            Logger.getLogger(Modelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        for (int i = 0;i < Oradores.size();i++){
            if (Oradores.get(i).getDni().equalsIgnoreCase(dni)) {
                aux = Oradores.get(i);
            }
        }

        return aux;

    }
    
    
    

    public int setOrador( Orador orad) throws SQLException {
        
        int retorno = 0;
        
        boolean existe = false;
        
        ConnectMySQL c = new ConnectMySQL("cacintegrador"); //mio
        Connection con = c.getConnection(); //mio
        
        PreparedStatement ps = con.prepareStatement("SELECT * FROM oradores;");
        ResultSet rs = ps.executeQuery();
        
        while( rs.next() ) {
            
            String dni = rs.getString(1);
            
            if (orad.getDni().equalsIgnoreCase(dni)) existe = true;
            
        }
        
       
        if (!existe) {
            String Query = "INSERT INTO oradores VALUES("
                + "\"" + orad.getDni() + "\", "
                + "\"" + orad.getNombre() + "\", "
                + "\"" + orad.getApellido() + "\", "
                + "\"" + orad.getFecha() + "\", "
                + "\"" + orad.getTema() + "\");";
            
            Statement st = con.createStatement();
            st.executeUpdate(Query);
        
            rs = ps.executeQuery();
            
            retorno = 1;
            
        }
        
        
        c.setClose();
        
        return retorno;
        
    }
    
    public void ModificarOrador( Orador orad) throws SQLException {
        
        boolean existe = false;
       
        ConnectMySQL c = new ConnectMySQL("cacintegrador"); //mio
        Connection con = c.getConnection(); //mio
        
        PreparedStatement ps = con.prepareStatement("SELECT * FROM oradores;");
        ResultSet rs = ps.executeQuery();
        
        while( rs.next() ) {
            
            if (orad.getDni().equalsIgnoreCase(rs.getString(1))) existe = true;
            
        }
        
        if (existe) {
            String Query = "UPDATE oradores  SET nombre= '" 
                + orad.getNombre() + "', apellido = '"
                + orad.getApellido() + "', fecha = '"
                + orad.getFecha() + "', tema = '"
                + orad.getTema() + "' WHERE dni='"
                + orad.getDni() +"';";
            
            Statement st = con.createStatement();
            st.executeUpdate(Query);
        
            rs = ps.executeQuery();
        
        }
        
        c.setClose();
        
    }
    
public void BorrarOrador( String dni) throws SQLException {
        
        ConnectMySQL c = new ConnectMySQL("cacintegrador"); //mio
        Connection con = c.getConnection(); //mio
        
        
        PreparedStatement ps = con.prepareStatement("SELECT * FROM oradores;");
        ResultSet rs = ps.executeQuery();
        
        String Query = "DELETE FROM oradores WHERE dni='" + dni + "';";
           
        Statement st = con.createStatement();
        st.executeUpdate(Query);
        
        rs = ps.executeQuery();
    
        c.setClose();
    
    }
    
   

}
