<%@include file="header.html" %>
<%@include file="menu1.jsp" %>
<%@include file="menu2.jsp" %>
		<div id="content">
			<div class="inner">
				<div class="section">
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>Admin Dashboard</h2>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>	
					<div class="section_content">
						<span class="section_content_top"></span>
						
						<div class="section_content_inner">
						<!--[if !IE]>start lists<![endif]-->
						<div class="lists">
							<div class="lists_inner">
								<dl>
									<dt>Product Settings</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddProduct">Add New Product</a></li>
												<li><a href="CompanyController?action=SearchProduct">Search Product</a></li>
												<li><a href="#">Remove Product</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								<dl>
									<dt>Company Settings</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="CompanyController?action=AddCompany">Add New Company</a></li>
												<li><a href="CompanyController?action=CompanyList">Company List</a></li>
												<li><a href="CompanyController?action=SearchCompany">Search Company</a></li>
												<li><a href="CompanyController?action=EnableDisableCompany">Enable/Disable Company</a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								
								<dl>
									<dt>User Settings</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="UserController?action=AddUser">Add New User</a></li>
												<li><a href="UserController?action=SearchUser">Search User</a></li>
												<li><a href="UserController?action=ChangePassword">Change Password</a></li>
												<li><a href="UserController?action=EnableDisableUser">Enable/Disable User</a></li>
												<li><a href="UserController?action="></a></li>
												<li><a href="#"></a></li>
												<li><a href="#"></a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								
								<dl>
									<dt>Static Pages</dt>
									<dd>
										<div class="dd_top">
											<ul class="dd_bottom">
												<li><a href="#">Store</a></li>
												<li><a href="#">Shipping</a></li>
												<li><a href="#">Authorize.net</a></li>
												<li><a href="#">Emails</a></li>
												<li><a href="#">Contact Form</a></li>
												<li><a href="#">Lookbook</a></li>
												<li><a href="#">SEO Settings</a></li>
												<li><a href="#">Tax</a></li>	
											</ul>
										</div>
									</dd>
								</dl>
								
							</div>
						</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
<%@include file="Footer.jsp" %>