package ar.diegobobasso.cactc10.resources;

import java.sql.*;


public class ConnectMySQL {

    private Connection Conn;
    private final String msgExito = "Conexión exitosa...";
    private final String msgError = "Error en conexión!...";

    private String user = "root";
    private String pass = "root";

    private String database;
    private String source = "//localhost";
    private int port = 3306;
    
    public ConnectMySQL( String ubicacion,int puerto, String baseDeDatos, String usuario, String password) {

        source = ubicacion;
        database = baseDeDatos;
        port = puerto;
        user = usuario;
        pass = password;

    }
    
    public ConnectMySQL( String baseDeDatos, String usuario, String password) {

        database = baseDeDatos;
        user = usuario;
        pass = password;

    }

    public ConnectMySQL( String baseDeDatos) {

        database = baseDeDatos;
        
    }
    
    private Connection ConexionMySQL( ) {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Conn = DriverManager.getConnection("jdbc:mysql:" + source + ":" + port + "/" + database, user, pass);
            System.out.println(msgExito + database);
        } catch (ClassNotFoundException ex) {
            System.out.println(msgError + database);
        } catch (SQLException ex) {
            System.out.println(msgError + database);
        }

        return Conn;
    }
    
    public Connection getConnection() {
        return this.ConexionMySQL();
    }
    
    public void setClose() throws SQLException {
        Conn.close();
    }

}
