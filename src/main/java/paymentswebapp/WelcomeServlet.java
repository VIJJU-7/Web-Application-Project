package paymentswebapp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public WelcomeServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("Name");
		String password = request.getParameter("Password");
		request.setAttribute("Name", username);
		paymentsAppdao dao= new paymentsAppdao();
		if (dao.ValidateLogin(username, password)) {
			
			RequestDispatcher rd = request.getRequestDispatcher("/Dashboard.jsp");
			rd.forward(request, response);
		}
		else {
			response.setContentType("text/html");
			RequestDispatcher rd = request.getRequestDispatcher("/WelcomePage.jsp");
			rd.include(request, response);
		}
	}

}
