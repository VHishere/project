/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.account;
import model.cart;
import model.product;

/**
 *
 * @author vh69
 */
@WebServlet(name="OrderControl", urlPatterns={"/order"})
public class OrderControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderControl</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderControl at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        account a = (account) session.getAttribute("acc");
	        if(a == null) {
	        	response.sendRedirect("login");
	        	return;
	        }
	        int accountID = a.getId();
	        DAO dao = new DAO();
	        List<cart> list = dao.getCartByAccountID(accountID);
	        List<product> list2 = dao.getAllProduct();
                double totalMoney=0;
        for(cart o : list) {
        	for(product p : list2) {
        		if(o.getProductID()==p.getId()) {
        			totalMoney=totalMoney+(o.getAmount());
        		}
        	}
        }
		request.getRequestDispatcher("Order.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        try {
			String emailAddress = request.getParameter("email");
			String name = request.getParameter("name");
			String phoneNumber = request.getParameter("phoneNumber");
			String deliveryAddress = request.getParameter("deliveryAddress");
			
			 HttpSession session = request.getSession();
		        account a = (account) session.getAttribute("acc");
		        if(a == null) {
		        	response.sendRedirect("login");
		        	return;
		        }
		        int accountID = a.getId();
		        DAO dao = new DAO();
		        List<cart> list = dao.getCartByAccountID(accountID);
		        List<product> list2 = dao.getAllProduct();
					
		        double totalMoney=0;
		        for(cart c : list) {
					for(product p : list2) {
						if(c.getProductID()==p.getId()) {
							totalMoney=totalMoney+(c.getAmount());
						}
					}
				}
				request.setAttribute("mess", "Dat hang thanh cong!");
				dao.deleteCartByAccountID(accountID);
				request.getRequestDispatcher("Order.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("error", "Dat hang that bai!");
			e.printStackTrace();
		}
	
		request.getRequestDispatcher("Order.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
