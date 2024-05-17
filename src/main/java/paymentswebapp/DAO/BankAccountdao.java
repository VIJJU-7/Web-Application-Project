package paymentswebapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BankAccountdao {
	Connection con;
	public BankAccountdao() throws ClassNotFoundException,SQLException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vijay", "root", "Vijay@7777");
	}
	
	public int addBankAcct(BankAccount b) throws SQLException {
			Statement st = con.createStatement();
			String bquery ="insert into Bank_acct_details(Acct_Num, Acct_Holder_Name, Bank_Name, Acct_IFSC_Code, Acct_Type, User_Id, BanK_Balance, Phone_Num)"
				       + "values('" + b.getBankAcctNum() + "','" + b.getBankAcctHolderName() + "', '" + b.getBankName()+ "', '" + b.getBankIfscCode() + "',"
			       	+ " '"+ b.getBankAcctType()+ "', '" + b.getUserId() + "', '" + b.getBankAcctCurBalance() + "','" + b.getPhoneNumber()+ "')";
			return st.executeUpdate(bquery);		
	}
	public List<BankAccount> BankAcctList(int UserId) throws SQLException{
		
		List<BankAccount> balist = new ArrayList<BankAccount>();
		
		String Query = "Select Acct_Num,Acct_Holder_Name,Acct_IFSC_Code,BanK_Balance from BankAccount Where UserId=?";
				
		PreparedStatement st = con.prepareStatement(Query);
		st.setInt(1, UserId);
		
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			BankAccount b = new BankAccount();
			b.setBankAcctNum(rs.getString("BankAcctNo"));
			b.setBankAcctHolderName(rs.getString("BankAcctName"));
			b.setBankIfscCode(rs.getString("BankIFSCCode"));
			b.setBankAcctCurBalance(rs.getDouble("BanK_Balance"));
			b.setBankAcctPin(rs.getString("BankAcctPin"));
			balist.add(b);
		}
		return balist;
	}
}

