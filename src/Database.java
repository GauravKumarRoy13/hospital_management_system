
import io.github.cdimascio.dotenv.Dotenv;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author GAURAV
 */
public class Database {

    public Statement sm;
    Connection con;

    public Database() {
        Dotenv dotenv =  Dotenv.load();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(dotenv.get("DB_URL"), dotenv.get("USER"), dotenv.get("PASSWORD"));
            sm = con.createStatement();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
