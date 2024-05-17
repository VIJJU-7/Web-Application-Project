package paymentswebapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class paymentsAppdao {
	
public void RegisterDetails(User u) {
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","Vijay@7777");
		Statement stmt = con.createStatement();
		String query = "Insert into Register_Details (Register_Name, Phone_Num, Email, Address, DOB, Password) "
				       + "values ('"+u.getName()+"','"+u.getPhoneNum()+"','"+u.getEmail()+"','"+u.getAddress()+"','"+u.getDateOfBirth()+"','"+u.getPassword()+"')";
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

}
//
//	public void addBankAccount(BankAccount b) {
//		
//	    try {
//	        Class.forName("com.mysql.cj.jdbc.Driver");
//	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay","root","Vijay@7777");
//	        Statement stmt = con.createStatement();
//	        
//	        String query = "insert into Bank_acct_details(Acct_Num, Acct_Holder_Name, Bank_Name, Acct_IFSC_Code, Acct_Type, User_Id, BanK_Balance, Phone_Num)"
//					       + "values('" + b.getBankAcctNum() + "','" + b.getBankAcctHolderName() + "', '" + b.getBankName()+ "', '" + b.getBankIfscCode() + "',"
//					       	+ " '"+ b.getBankAcctType()+ "', '" + b.getUserId() + "', '" + b.getBankAcctCurBalance() + "','" + b.getPhoneNumber()+ "')";
//	       
//	        int rs = stmt.executeUpdate(query);
//	    
//	    
//	    }
//	        public List<BankAccount> BaList(int UserID) throws SQLException{
//	    		
//	    		List<BankAccount> balist = new ArrayList<BankAccount>();
//	    		
//	    		String Query = "Select Acct_Num,Acct_Holder_Name,Acct_IFSC_Code,BanK_Balance from BankAccount Where UserId=?";
//	    				
//	    		Connection con;
//				PreparedStatement st = con.prepareStatement(Query);
//	    		st.setInt(1, UserID);
//	    		
//	    		ResultSet rs = st.executeQuery();
//	    		while(rs.next()) {
//	    			BankAccount b = new BankAccount();
//	    			b.setBankAcctNum(rs.getString("BankAcctNo"));
//	    			b.setBankAcctHolderName(rs.getString("BankAcctName"));
//	    			b.setBankIfscCode(rs.getString("BankIFSCCode"));
//	    			b.setBankAcctCurBalance(rs.getDouble("BanK_Balance"));
//	    			b.setBankAcctPin(rs.getString("BankAcctPin"));
//	    			balist.add(b);
//	    		}
//	    		return balist;
//	        }
//	}
	
	