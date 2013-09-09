package com.crm.controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crm.beans.UserBean;
import com.crm.beans.UserManager;
import com.crm.connection.DbConnect;

/**
 * Servlet implementation class UserServlet
 */
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String controllerStringName = "UserController";
	
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("AdminLogin")) adminLoginHandler(request,response);
		if(action.equalsIgnoreCase("AddUser")) addUserHandler(request,response);
		if(action.equalsIgnoreCase("EditUser")) addUserHandler(request,response);
		if(action.equalsIgnoreCase("AddEditSubmitUser")) addSubmitUserHandler(request,response);
		
	}
	
	

	private void adminLoginHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean isValidCredentials = UserManager.isValidCredential(userName, password, "SuperAdmin");
		if(isValidCredentials)	{	
			UserBean userBean = UserManager.createEntityFromUserName(userName);
			HttpSession session = request.getSession(true);
			session.setAttribute("userBean", userBean);
			forward("/AdminOptions.jsp", request, response);
		}
		else
			response.sendRedirect("081520130356/Login.jsp?errMsg=invalid");
	}
	
	private void addUserHandler(HttpServletRequest request,	HttpServletResponse response) throws ServletException, IOException {
		forward("/UserAddForm.jsp", request, response);
	}
	
	private void addSubmitUserHandler(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void forward(String url, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException
	{
				HttpSession session =request.getSession();
			 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
		 		dispatcher.forward(request, response);	 		
	}

}
