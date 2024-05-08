package paymentswebapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class paymentsAppdao {
	
public void RegisterDetails(User u) {
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","root");
		Statement stmt = con.createStatement();
		String query = "Insert into Register_Details (Register_Name, Phone_Num, Email, DOB, Password) values ('"+u.getName()+"','"+u.getPhoneNum()+"','"+u.getEmail()+"','"+u.getDateOfBirth()+"','"+u.getPassword()+"')";
		stmt.executeUpdate(query);
		stmt.close();
		con.close();
	}
	catch (Exception e){
		e.printStackTrace();
	}
}
	
	public boolean ValidateLogin(String name, String password) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","root");
			Statement stmt = con.createStatement();
			String query = "Select Register_Name, Password from Register_Details"; 
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				if(rs.getString("Register_Name").equals(name) && rs.getString("Password").equals(password)) {
					return true;
				}
			}
			stmt.close();
			con.close();
		}
	catch (Exception e) {
		e.printStackTrace();
	}
	return false;
}
}
