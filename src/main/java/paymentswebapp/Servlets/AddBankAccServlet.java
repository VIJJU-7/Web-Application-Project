package paymentswebapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class AddBankAccServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String accountHolderName = request.getParameter("Name");
        String accountNumber = request.getParameter("AccNum");
        String ifsc = request.getParameter("IFSC");
        String branch = request.getParameter("Branch");
        
       
        BankAccount ba = new BankAccount();
        ba.setBaName(accountHolderName);
        ba.setBaNumber(accountNumber);
        ba.setIFSC_CODE(ifsc);
        ba.setBaBranch(branch);
        ba.setBaTypeID(0);
        ba.setCurrBankBal(1000);
        ba.setUserId(0);
        

        paymentsAppdao dao = new paymentsAppdao();
        dao.addBankAccount(ba);
        response.sendRedirect("Dashboard.jsp");
    }
}
