package com.crm.beans;

import javax.servlet.http.HttpServletRequest;

import com.crm.commonFiles.DbBean;

public class CompanyManager {

	public static CompanyBean createEntity(HttpServletRequest request) {
		CompanyBean companyBean = new CompanyBean();
		
		companyBean.setCode(request.getParameter("CompanyCode"));
		companyBean.setName(request.getParameter("CompanyName"));
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
		String query = "insert into CompanyTable(Code, Name, Address1) values ('"+companyBean.getCode()+"','"+companyBean.getName()+"','"+companyBean.getAddress1()+"')";
		DbBean.executeInsert(query);
	}

}
