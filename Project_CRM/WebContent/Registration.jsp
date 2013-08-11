<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="imagetoolbar" content="no" />

<link media="screen" rel="stylesheet" type="text/css" href="css/admin.css"  />
<link media="screen" rel="stylesheet" type="text/css" href="css/admin-blue.css"  />
<script type="text/javascript" src="js/behaviour.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>

<title>User Registration</title>

<script type="text/javascript">
	$(document).ready(function(){
		$("#submit").click(function(){
			console.log("1");
			var isBlank=false;
			
			if($("#fname").val() == ""){
				isBlank=true;
				$("#fnameErr").fadeIn(2000);
			}
			if($("#lname").val() == ""){
				isBlank=true;
				$("#lnameErr").fadeIn(2000);
			}
			if($("#email").val() == ""){
				isBlank=true;
				$("#emailErr").fadeIn(2000);
			}
			if($("#password").val() ==	""){
				isBlank=true;
				$("#passwordErr").fadeIn(2000);
			}
			if($("#contactno").val() == ""){
				isBlank=true;
				$("#contactnoErr").fadeIn(2000);
			}
			if(isBlank==false){
				//$("#regform").submit();
			}
		});
	});
</script>

</head>
<body>

<div id="wrapper">
	
	<div id="header_main_menu">
		<span id="header_main_menu_bg"></span>
		<div id="header">
			<div class="inner">
				<h1 id="logo"><a href="#">ComplaintManagementSystem <span>Administration Panel</span></a></h1>
				<div id="user_details">
					<ul id="user_details_menu">
						<li class="welcome">Welcome <strong>Administrator (<a class="new_messages" href="#">2 new message</a>)</strong></li>
						<li>
							<ul id="user_access">
								<li class="first"><a href="#">My account</a></li>
								<li class="last"><a href="#">Log out</a></li>
							</ul>
						</li>
					</ul>
					
					<div id="server_details">
						<dl>
							<dt>Server time :</dt>
							<dd>9:22 AM | 03/04/2009</dd>
						</dl>
						<dl>
							<dt>Last login ip :</dt>
							<dd>192.168.0.25</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<div id="main_menu">
			<div class="inner">
			<ul>
				<li>
					<a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Dashboard</em><span></span></span><span class="r"><span></span></span></a>
					<ul>
						<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>To do List</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>List all Products</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Check Sales</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Open Cases</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Add Product</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Manage Categories</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Selected Item</em><span></span></span><span class="r"><span></span></span></a></li>
						<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Privileges</em><span></span></span><span class="r"><span></span></span></a></li>
					</ul>
				</li>
				<li>
					<a href="#"><span class="l"><span></span></span><span class="m"><em>Products</em><span></span></span><span class="r"><span></span></span></a>
				</li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Orders</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>User Accounts</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Static Pages</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>SEO Settings</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Moderators</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Blog Settings</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>FaQs</em><span></span></span><span class="r"><span></span></span></a></li>
				<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Hosting Options</em><span></span></span><span class="r"><span></span></span></a></li>
			</ul>
			</div>
			<span class="sub_bg"></span>
		</div>
		</div>
				<div class="section">
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>Search:</h2>
								<ul class="section_menu left">
									<!-- 
									<li><a href="#" class="selected_lk"><span class="l"><span></span></span><span class="m"><em>Complaints</em><span></span></span><span class="r"><span></span></span></a></li>
									<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Employees</em><span></span></span><span class="r"><span></span></span></a></li>
									<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Customers</em><span></span></span><span class="r"><span></span></span></a></li>
									<li><a href="#"><span class="l"><span></span></span><span class="m"><em>Site Pages</em><span></span></span><span class="r"><span></span></span></a></li>
								 -->
								</ul>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>
					
					<div class="section_content">
						<span class="section_content_top"></span>
						<div class="section_content_inner">
							<form action="RegServlet" class="search_form" id="regform" method="post">
							<fieldset>
								<div class="forms">
								<h3>User Details</h3>
								<div class="row">
									<label>First Name:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="fname" type="text" id="fname"/></span></li>
											<li style="display: none;color: red;" id="fnameErr">* Invalid First Name</li>
										</ul>
									</div>
								</div>
								<div class="row">
									<label>Last Name:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="lname" type="text" id="lname"/></span></li>
											<li style="display: none;color: red;" id="lnameErr">* Invalid Last Name</li>
										</ul>
									</div>
								</div>
							
								<div class="row">
									<label>Email ID:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="email" type="text" id="email"/></span></li>
											<li style="display: none;color: red;" id="emailErr">* Invalid Email ID</li>
										</ul>
									</div>
								</div>
								
								<div class="row">
									<label>Password:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="password" type="password" id="password"/></span></li>
											<li style="display: none;color: red;" id="passwordErr"></li>
										</ul>
									</div>
								</div>
								
									
								<div class="row">
									<label>Address:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="address" type="text" id="address" /></span></li>
										</ul>
									</div>
								</div>
								
									
								<div class="row">
									<label>City:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="city" type="text" id="city"/></span></li>
										</ul>
									</div>
								</div>
								
									
								<div class="row">
									<label>Pin Code:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="pincode" type="text" id="pincode"/></span></li>
										</ul>
									</div>
								</div>
								
								<div class="row">
									<label>Contact No:</label>
									<div class="inputs">
										<ul>
											<li><span class="input_wrapper"><input class="text" name="contactno" type="text" id="contactno"/></span></li>
											<li style="display: none;color: red;" id="contactnoErr">* Invalid Contact No</li>
										</ul>
									</div>
								</div>
							
							</fieldset>
							
							<fieldset>
								<div class="forms">
									<div class="row">
										<div class="inputs">
											<span class="button blue_button"><span><span>Submit</span></span><input name="submitbtn" type="button" id="submit"/></span>
										</div>
									</div>
								</div>
							</fieldset>
								</form>
								
						</div>
						
						<span class="section_content_bottom"></span>
					</div>
				</div>
</body>
</html>