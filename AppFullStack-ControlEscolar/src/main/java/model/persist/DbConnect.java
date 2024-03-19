/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.persist;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * encapsulates data for database connection.
 *
 * @author ProvenSoft
 */
public final class DbConnect {

    public static final String FILE_PATH = "dbConnection.properties";

    public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    public static final String PROTOCOL = "jdbc:mysql:";
    public static String HOST = "localhost";
    public static String BD_NAME = "bd_institucion";
    public static String USER = "root";
    public static String PASSWORD = "123456";
    public static String BD_URL;

    public static void loadDriver() throws ClassNotFoundException {
        getConnectionProperties();
        BD_URL = String.format("%s//%s/%s", PROTOCOL, HOST, BD_NAME);
    }

    private static void getConnectionProperties() throws ClassNotFoundException {
        //getConnectionProperties(); better if connection properties are read from a configuration file
        Class.forName(DRIVER);
        BD_URL = String.format("%s//%s/%s", PROTOCOL, HOST, BD_NAME);
    }

    /**
     * gets and returns a connection to database
     *
     * @return connection
     * @throws PersistException in case of connexion error
     */
    public Connection getConnection() {
        BD_URL = String.format("%s//%s/%s%s", PROTOCOL, HOST, BD_NAME, "?autoReconnect=true&useSSL=false");
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(BD_URL, USER, PASSWORD);
        } catch (SQLException ex) {
            Logger.getLogger(DbConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

    /**
     * gets and returns a connection to database
     *
     * @return connection
     * @throws java.sql.SQLException
     */
//    public Connection getConnection() throws SQLException {
//        Connection conn = null;
//        try {
//            Properties props = new Properties();
//            props.load(new FileInputStream(FILE_PATH));
//            HOST = props.getProperty("HOST");
//            BD_NAME = props.getProperty("BD_NAME");
//            USER = props.getProperty("USER");
//            PASSWORD = props.getProperty("PASSWORD");
//            BD_URL = String.format("%s//%s/%s", PROTOCOL, HOST, BD_NAME);
//
//            conn = DriverManager.getConnection(BD_URL, USER, PASSWORD);
//
//        } catch (FileNotFoundException ex) {
//            System.err.println("NO SE ENCUENTRA EL ARCHIVO PROPERTIES!");
//        } catch (IOException ex) {
//            System.err.println("ERROR DE I/O!");
//        }
//        return conn;
//    }
}
