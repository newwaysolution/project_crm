package com.crm.beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.crm.commonFiles.DbBean;

public class UserManager {
	public static boolean isValidCredential(String userName,String password,String role){
		String query = "select password from usertable where UserName = '"+userName+"' and Role = '"+role+"'";
		System.out.println(query);
		ResultSet rs = DbBean.executeSelect(query);
		try {
			while(rs.next()){
				if(rs.getString("password").equals(password))
					return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static UserBean createEntityFromUserName(String userName) {
		String query = "select UserId, FirstName, LastName, Email, Phone, Role from UserTable where UserName = '"+userName+"'";
		ResultSet resultSet = DbBean.executeSelect(query);
		UserBean userBean = new UserBean();
		try {
			while(resultSet.next()){
				userBean.setUserId(resultSet.getLong("UserId"));
				userBean.setUserName(userName);
				userBean.setFirstName(resultSet.getString("FirstName"));
				userBean.setLastName(resultSet.getString("LastName"));
				userBean.setEmail(resultSet.getString("Email"));
				userBean.setPhone(resultSet.getString("Phone"));
				userBean.setRole(resultSet.getString("Role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userBean;
	}
	
}
