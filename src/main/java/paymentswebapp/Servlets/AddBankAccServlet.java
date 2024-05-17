package paymentswebapp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class AddBankAccServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddBankAccServlet() {
    	super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    	String accountNumber = request.getParameter("AccNum");
//		String acctHolderName = request.getParameter("Name");
//		String bankName = request.getParameter("BaName");
//		String bankIFSCCode = request.getParameter("IFSC");
//		String bankAcctType = request.getParameter("paymentOption");
//		String phoneNumber = request.getParameter("phonenum");
//		String bankAcctPin = request.getParameter("bankAcctPin");
//		String userName = request.getParameter("username");
//		
//		
//		paymentsAppdao dao = new paymentsAppdao();
////		User u = new User();
////		int currUserId = u.getUserId();
//		
//		BankAccount ba = new BankAccount();
//		
//		ba.setBankAcctNum(accountNumber);
//		ba.setBankAcctHolderName(acctHolderName);
//		ba.setBankName(bankName);
//		ba.setBankIfscCode(bankIFSCCode);
//		ba.setBankAcctType(bankAcctType);
//		ba.setPhoneNumber(phoneNumber);
////		ba.setBankAcctPin(bankAcctPin);
////		ba.setUserId(currUserId);
//	
//		try {
//			dao.addBankAccount(ba);
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		response.setContentType("text/html");
////		response.getWriter().write("<p style='color:green;'>Account Added Successful!<p>");
//		RequestDispatcher rd = request.getRequestDispatcher("/Dashboard.jsp");
//		rd.include(request, response);
//    	
//    }
//}
    	String accountNumber = request.getParameter("AccNum");
		String acctHolderName = request.getParameter("Name");
		String bankName = request.getParameter("BaName");
		String bankIFSCCode = request.getParameter("IFSC");
		String bankAcctType = request.getParameter("paymentOption");
		String phoneNumber = request.getParameter("phonenum");
		String bankAcctPin = request.getParameter("bankAcctPin");
		String userName = request.getParameter("username");
		
		BankAccount ba = new BankAccount();
		ba.setBankAcctNum(accountNumber);
		ba.setBankAcctHolderName(acctHolderName);
		ba.setBankName(bankName);
		ba.setBankIfscCode(bankIFSCCode);
		ba.setBankAcctType(bankAcctType);
		ba.setPhoneNumber(phoneNumber);
		
		try {
BankAccountdao db = new BankAccountdao();

			if(db.addBankAcct(ba)>0) {
				RequestDispatcher rd = request.getRequestDispatcher("Dashboard.jsp");
				rd.forward(request, response);		
			}
			else {
				response.setContentType("text/html");
				RequestDispatcher rd = request.getRequestDispatcher("AddBankAccount.jsp");
				rd.include(request, response);
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
}
}