package paymentswebapp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RegisterServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("Firstname");
		String email =request.getParameter("email");
		String dob = request.getParameter("dob");
		String phno = request.getParameter("phonenumber");
		String address = request.getParameter("Address");
		String pass = request.getParameter("pass");
		
//		response.getWriter().write("Successfully Registered");
		

		try {

			User u = new User();
			u.setName(name);
			u.setPhoneNum(phno);
			u.setDateOfBirth(dob);
			u.setAddress(address);
			u.setEmail(email);
			u.setPassword(pass);
			
			paymentsAppdao dao = new paymentsAppdao();
			dao.RegisterDetails(u);
			
		} 
		catch (Exception e) {
			
			e.printStackTrace();
			
		}
		response.setContentType("text/html");
//		response.getWriter().write("null");
		RequestDispatcher rd = request.getRequestDispatcher("RegistrationSuccessfull.jsp");
		rd.include(request, response);
		
	}
}


