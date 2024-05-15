package paymentswebapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class paymentsAppdao {
	
public void RegisterDetails(User u) {
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","Vijay@7777");
		Statement stmt = con.createStatement();
		String query = "Insert into Register_Details (Register_Name, Phone_Num, Email, Address, DOB, Password) values ('"+u.getName()+"','"+u.getPhoneNum()+"','"+u.getEmail()+"','"+u.getAddress()+"','"+u.getDateOfBirth()+"','"+u.getPassword()+"')";
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","Vijay@7777");
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



//	public void addBankAccount(BankAccount b) {
//	    try {
//	        Class.forName("com.mysql.cj.jdbc.Driver");
//	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","Vijay@7777");
//	        Statement stmt = con.createStatement();
//	        String query = "INSERT INTO Bank_Acct_Details (User_ID, BaTypeID, BaName, BaNumber, IFSC_CODE, Phonenum, BaAccName, CurrentBankBal) VALUES ('"+b.getUserId()+"','"+b.getBaTypeID()+"','"+b.getBaName()+"','"+b.getBaNumber()+"','"+b.getIFSC_CODE()+"','"+b.getPhonenum()+"','"+b.getBaAccName()+"','"+b.getCurrBankBal()+"')";
//	        stmt.executeUpdate(query);
//	        stmt.close();
//	        con.close();
//	    } catch (Exception e){
//	        e.printStackTrace();
//	    }
	
	public void addBankAccount(BankAccount b) {
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","Vijay@7777");
	        Statement stmt = con.createStatement();

	       
	        String checkQuery = "SELECT * FROM Bank_Account_Types WHERE BaTypeID = '" + b.getBaTypeID() + "'";
	        ResultSet rs = stmt.executeQuery(checkQuery);

	        if (!rs.next()) {
	            System.out.println("Error: BaTypeID does not exist in bank_account_types.");
	            return;
	        }

	        String query = "INSERT INTO Bank_Acct_Details (User_ID, BaTypeID, BaName, BaNumber, IFSC_CODE, Phonenum, BaAccName, CurrentBankBal) VALUES ('"+b.getUserId()+"','"+b.getBaTypeID()+"','"+b.getBaName()+"','"+b.getBaNumber()+"','"+b.getIFSC_CODE()+"','"+b.getPhonenum()+"','"+b.getBaAccName()+"','"+b.getCurrBankBal()+"')";
	        stmt.executeUpdate(query);
	        stmt.close();
	        con.close();
	    } catch (Exception e){
	        e.printStackTrace();
	    }
	}

	}
