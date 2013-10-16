package com.crm.controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.crm.beans.CompanyBean;
import com.crm.beans.CompanyManager;


/**
 * Servlet implementation class CompanyController
 * @author Parth Soni 
 * @version 1.0
 */
public class CompanyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String controllerStringName = "CompanyController";
	
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
		if(action.equalsIgnoreCase("CompanyList")) CompanyListHandler(request,response);
		if(action.equalsIgnoreCase("CompanyDetails")) 
			CompanyDetailsHandler(request,response);
		if(action.equalsIgnoreCase("AddEditSubmitCompany")) addEditSubmitHandler(request,response);
		if(action.equalsIgnoreCase("SearchCompany")) SearchCompanyHandler(request,response);
		if(action.equalsIgnoreCase("CompanySearchResults")) CompanySearchResultsHandler(request,response);
		if(action.equalsIgnoreCase("EnableDisableCompany")) EnableDisableHandler(request,response);
		if(action.equalsIgnoreCase("EnableCompany")) EnableCompanyHandler(request,response);
		if(action.equalsIgnoreCase("DisableCompany")) DisableCompanyHandler(request,response);
	}

	private void CompanyDetailsHandler(HttpServletRequest request,
			HttpServletResponse response){
		
		String companyCode = request.getParameter("companyCode");
		try {
			ResultSet companyDetails=CompanyManager.getCompanyDetails(companyCode);
			request.setAttribute("companyDetails", companyDetails);
			forward("/CompanyDetails.jsp", request, response);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	
	}

	private void EnableDisableHandler(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			forward("/EnableDisable.jsp", request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void EnableCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) {
		
		
	}

	private void DisableCompanyHandler(HttpServletRequest request,
			HttpServletResponse response) {
		
		
	}

	private void CompanySearchResultsHandler(HttpServletRequest request, HttpServletResponse response) {
		ResultSet companyList= CompanyManager.searchCompany(request);
		request.setAttribute("companyList",companyList);
		try {
			forward("/CompanyList.jsp", request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void CompanyListHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		ResultSet companyList= CompanyManager.getAllCompanies();
		request.setAttribute("companyList",companyList);
		forward("/CompanyList.jsp", request, response);
		
	}

	

	private void addCompanyHandler(HttpServletRequest request, HttpServletResponse response) {
		try {
			forward("/AddCompany.jsp", request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void editCompanyHandler(HttpServletRequest request, HttpServletResponse response) {
		ResultSet companyCode=(ResultSet)request.getAttribute("companyCode");
		String code;
		try {
			code = companyCode.getString("Code");
			ResultSet companyDetails=CompanyManager.getCompanyDetails(code);
			request.setAttribute("companyDetails", companyDetails );
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		try {
			forward("/EditCompany.jsp", request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void addEditSubmitHandler(HttpServletRequest request, HttpServletResponse response)  {
		CompanyBean companyBean = CompanyManager.createEntity(request);
		try {
			CompanyManager.saveCompany(companyBean);
			forward("/AdminOptions.jsp", request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void SearchCompanyHandler(HttpServletRequest request, HttpServletResponse response) {
		try {
			forward("/CompanySearchForm.jsp",request,response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void forward(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		  
				HttpSession session =request.getSession();
			 	RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(url);
		 		dispatcher.forward(request, response);
		  		  
	}

}
