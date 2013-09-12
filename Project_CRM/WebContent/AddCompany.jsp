<%@include file="header.html" %>
<%@include file="menu1.jsp" %>
<%@include file="menu2.jsp" %>
<!--[if !IE]>start content<![endif]-->
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <script>
$(document).ready(function(){
	$(".tooltip").hide();
	$("#licenseStartDate").datepicker({ dateFormat: "dd-mm-yy" });
	$("#licenseEndDate").datepicker({ dateFormat: "dd-mm-yy" });
	
	$("#companyName").blur(function(){
		if($(this).val()==""){
			$("#error1").show();
		}
		else{
			$("#error1").hide();			
		}
	});
});
</script>
</head>

<div id="content">
	<div class="inner">
	<div class="section">
					
		<!--[if !IE]>start title wrapper<![endif]-->
		<div class="title_wrapper">
			<span class="title_wrapper_top"></span>
			<div class="title_wrapper_inner">
				<span class="title_wrapper_middle"></span>
				<div class="title_wrapper_content">
					<h2>Add New Company</h2>
				</div>
			</div>
			<span class="title_wrapper_bottom"></span>
		</div>
		<!--[if !IE]>end title wrapper<![endif]-->
		
		<!--[if !IE]>start section content<![endif]-->
		<div class="section_content">
			<span class="section_content_top"></span>
			
			<div class="section_content_inner">
			
			
			<!--[if !IE]>start forms<![endif]-->
			<div class="forms_wrapper">
			<form id="addCompanyForm" action="CompanyController?action=AddEditSubmitCompany" method="post" class="search_form general_form">
				<!--[if !IE]>start fieldset<![endif]-->
				<fieldset>
					<!--[if !IE]>start forms<![endif]-->
					<div class="forms">
					<h3>Company Basic Details</h3>
					<!--[if !IE]>start row<![endif]-->
					<div class="row">
						<label>Company Code:</label>
						<%  %>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="companyCode" type="text" /></span>
					<!--    <span class="system positive" style="display: none;">This is a positive message</span> -->
    				</div> 
					</div>
					<div class="row">
						<label>Company Name:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="companyName" id="companyName" type="text" /></span>
							<div class="tooltip" id="error1">
									        	<div class="tooltip_top">
										     		<div class="tooltip_bottom">
														<span class="pointer"></span>
														<p class="first">
														 This field is mandatory!
														</p>
											
													</div>
												</div>
							</div>
							<!-- <span class="system positive" style="display: none;">This is a positive message</span> -->
						</div>
					</div>
					<!--[if !IE]>end row<![endif]-->
					
					<!--[if !IE]>start row<![endif]-->
					<div class="row">
						<label>Address1:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="address1" type="text" /></span>
						</div>
					</div>
					<div class="row">
						<label>Address2:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="address2" type="text" /></span>
						</div>
					</div>
					<div class="row">
						<label>City:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="city" type="text" /></span>
						</div>
					</div>
					<div class="row">
						<label>State:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="state" type="text" /></span>
						</div>
					</div>
					<div class="row">
						<label>Zip:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="zip" type="text" /></span>
						</div>
					</div>
					<div class="row">
						<label>License Start Date:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" id="licenseStartDate" name="licenseStartDate" type="text" /></span>
						</div>
					</div>
					<div class="row">
						<label>License End Date:</label>
						<div class="inputs">
							<span class="input_wrapper"><input class="text" name="licenseEndDate" id="licenseEndDate" type="text" /></span>
						</div>
					</div>
					
					<!--[if !IE]>start row<![endif]-->
					<div class="row">
						<div class="inputs">
							<span class="button blue_button search_button"><span><span>Register</span></span><input name="" type="submit" /></span>
							<!-- <span class="button green_button"><span><span>GREEN BUTTON</span></span><input name="" type="submit" /></span>
							<span class="button gray_button"><span><span>NEUTRAl GREY</span></span><input name="" type="submit" /></span>  -->
						</div>
					</div>
					
					</div>
					
					</fieldset>
			</form>
			</div>
			</div>
			
			<span class="section_content_bottom"></span>
		</div>
	</div>
	</div>
</div>
<%@include file="Footer.jsp" %>