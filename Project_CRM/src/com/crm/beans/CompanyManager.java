package com.crm.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.crm.commonFiles.DbBean;

public class CompanyManager {

	public static CompanyBean createEntity(HttpServletRequest request) {
		CompanyBean companyBean = new CompanyBean();
		
		companyBean.setCode(request.getParameter("companyCode"));
		companyBean.setName(request.getParameter("companyName"));
		companyBean.setAddress1(request.getParameter("address1"));
		companyBean.setAddress2(request.getParameter("address2"));
		companyBean.setCity(request.getParameter("city"));
		companyBean.setState(request.getParameter("state"));
		companyBean.setZip(request.getParameter("zip"));
		companyBean.setLicenseStartDate(request.getParameter("licenseStartDate"));
		companyBean.setLicenseEndDate(request.getParameter("licenseEndDate"));
		
		return companyBean;
	}

	public static void saveCompany(CompanyBean companyBean) throws Exception {
		String query = "insert into CompanyTable(Code, Name, Address1, Address2, City, State, Zip, LicenseStartDate, LicenseEndDate) values ('"+companyBean.getCode()+"','"+companyBean.getName()+"','"+companyBean.getAddress1()+"','"+companyBean.getAddress2()+"','"+companyBean.getCity()+"','"+companyBean.getState()+"','"+companyBean.getZip()+"','"+companyBean.getLicenseStartDate()+"','"+companyBean.getLicenseEndDate()+"')";
		DbBean.executeInsert(query);
	}
	
	public static ResultSet getAllCompanies() {
		
		String query = "select convert(varchar(32),LicenseStartDate,103) LicenseStartDate, convert(varchar(32),LicenseEndDate,103) LicenseEndDate, * from CompanyTable";
		ResultSet rs = DbBean.executeSelect(query);
		
		return rs; 
	}

	public static ResultSet searchCompany(HttpServletRequest request) {
		String query ="select convert(varchar(32),LicenseStartDate,103) LicenseStartDate, convert(varchar(32),LicenseEndDate,103) LicenseEndDate, * from CompanyTable" +buildWhereClause(request); 
		ResultSet searchedCompany= DbBean.executeSelect(query);
		return searchedCompany;
	}

	private static String buildWhereClause(HttpServletRequest request) {
		String wherePart = "";
		String whereClause = " where 1=1 " + wherePart;
		if(!request.getParameter("CompanyCode").equalsIgnoreCase("") && request.getParameter("companyCode")!=null){
			wherePart+=" and Code=" + request.getParameter("companyCode");
		}
		if(!request.getParameter("companyName").equalsIgnoreCase("") && request.getParameter("companyName")!=null){
			wherePart+=" and Name like " + request.getParameter("companyName");
		}
		if(!request.getParameter("address1").equalsIgnoreCase("") && request.getParameter("address1")!=null){
			wherePart+=" and Address1 like " + request.getParameter("address1");
		}
		if(!request.getParameter("address2").equalsIgnoreCase("") && request.getParameter("address2")!=null){
			wherePart+=" and Address2 like " + request.getParameter("address2");
		}
		if(!request.getParameter("city").equalsIgnoreCase("") && request.getParameter("city")!=null){
			wherePart+=" and City=" + request.getParameter("city");		
		}
		if(!request.getParameter("state").equalsIgnoreCase("") && request.getParameter("state")!=null){
			wherePart+=" and State = " + request.getParameter("state");
		}
		if(!request.getParameter("zip").equalsIgnoreCase("") && request.getParameter("zip")!=null){
			wherePart+=" and Zip = " + request.getParameter("zip");
		}
		if(!request.getParameter("licenseStartDate").equalsIgnoreCase("") && request.getParameter("licenseStartDate")!=null){
			wherePart+=" and LicenseStartDate >= " + request.getParameter("licenseStartDate");
		}
		if(!request.getParameter("licenseEndDate").equalsIgnoreCase("") && request.getParameter("licenseEndDate")!=null){
			wherePart+=" and LicenseEndDate <= " + request.getParameter("licenseEndDate");
		}
		return whereClause;
	}

	public static ResultSet getCompanyDetails(String code) {
		String query = "select * from CompanyTable where Code = " + code + ";" ;
		ResultSet companyDetails = DbBean.executeSelect(query);
		return companyDetails;
	}

}
