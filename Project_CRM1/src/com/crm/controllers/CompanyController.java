package com.crm.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CompanyController
 * @author Parth Soni 
 * @version 1.0
 */
public class CompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String controllerStringName = "UserController";
	
    public CompanyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("AddCompany")) addCompanyHandler(request,response);
		if(action.equalsIgnoreCase("EditCompany")) editCompanyHandler(request,response);
		if(action.equalsIgnoreCase("AddEditSubmitCompany")) addEditSubmitHandler(request,response);
		if(action.equalsIgnoreCase("SearchCompany")) SearchCompanyHandler(request,response);
		
	}

	private void addCompanyHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		forward("/AddCompany.jsp", request, response);
	}
	
	private void editCompanyHandler(HttpServletRequest request, HttpServletResponse response) {
		
	}

	private void addEditSubmitHandler(HttpServletRequest request, HttpServletResponse response) {
		
	}

	private void SearchCompanyHandler(HttpServletRequest request, HttpServletResponse response) {
		
	}

	private void forward(String url, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
				HttpSession session =request.getSession();
			 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
		 		dispatcher.forward(request, response);	 		
	}

}
