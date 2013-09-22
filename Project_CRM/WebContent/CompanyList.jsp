<%@page import="java.sql.ResultSet"%>
<%@include file="header.html" %>
<%@include file="menu1.jsp" %>
<%@include file="menu2.jsp" %>
<%
	ResultSet companyList = (ResultSet)request.getAttribute("companyList");
	ResultSet companyCode=null;
	
%>		
		<!--[if !IE]>start content<![endif]-->
		<div id="content">
			<div class="inner">
				<div class="section">
					
					<!--[if !IE]>start title wrapper<![endif]-->
					<div class="title_wrapper">
						<span class="title_wrapper_top"></span>
						<div class="title_wrapper_inner">
							<span class="title_wrapper_middle"></span>
							<div class="title_wrapper_content">
								<h2>Company's List:</h2>
							</div>
						</div>
						<span class="title_wrapper_bottom"></span>
					</div>
					<!--[if !IE]>end title wrapper<![endif]-->
					
					<!--[if !IE]>start section content<![endif]-->
					<div class="section_content">
						<span class="section_content_top"></span>
						
						<div class="section_content_inner">
							
							<div class="table_tabs_menu">
							<!--[if !IE]>start  tabs<![endif]-->
							<ul class="table_tabs">
								<li><a href="CompanyController?action=CompanyList" class="selected"><span><span>All Company</span></span></a></li>
								 <li><a href="CompanyController?action=SearchCompany"><span><span>Search Company</span></span></a></li>
								<!--<li><a href="#"><span><span>Best Sellers</span></span></a></li> -->
							</ul>
							<!--[if !IE]>end  tabs<![endif]-->
							<a href="CompanyController?action=AddCompany" class="update"><span><span><em>Add New Company</em><strong></strong></span></span></a>
							</div>
						
							<!--[if !IE]>start table_wrapper<![endif]-->
							<div class="table_wrapper">
								<div class="table_wrapper_inner">
								<table cellpadding="0" cellspacing="0" width="100%">
									<tbody><tr>
										<th style="width: 17px;">No.</th>
										<th class="photo"><span>Code</span></th>
										<th><a href="#" class="asc">Name</a></th>
										<th style="width: 81px;">License Start Date</th>
										<th style="width: 81px;">License End Date</th>
										<!-- <th style="width: 60px;"><a href="#" class="desc">License End Date</a></th> -->
										<th style="width: 60px;">Enable/Disable</th>
										
										<th style="width: 165px;">Actions</th>
									</tr>
									<%
									int no = 1;
									while(companyList.next()){
									%>
										<tr class="first">
											<td><%=no++ %>.</td>
											<td><a href="#" class="product_name"><%=(companyList.getString("Code")!=null)?companyList.getString("Code"):"" %></a></td>
											<td><a href="#" class="product_name"><%=companyList.getString("Name")!=null?companyList.getString("Name"):"" %></a></td>
											<td><%=companyList.getString("LicenseStartDate")!=null?companyList.getString("LicenseStartDate"):"" %></td>
											<td><%=companyList.getString("LicenseEndDate")!=null?companyList.getString("LicenseEndDate"):"" %></td>
											<td>
												<div class="move_menu">
													<ul>
														<li><a href="CompanyController?action=EnableCompany" class="enable"></a></li>
														<li><a href="CompanyController?action=DisableCompany" class="disable"></a></li>
													</ul>
												</div>
											</td>
											<td>
												<div class="actions_menu">
													<ul>
														<li><a class="details" href="CompanyController?action=CompanyDetails companyCode=<%=companyList.getString("Code")%>" >Details</a></li>
														<li><a class="edit" href="#">Edit</a></li>
														<li><a class="delete" href="#">Delete</a></li>
													</ul>
												</div>
											</td>
										</tr>
									<%
									}
									%>
								</tbody></table>
								</div>
							</div>
							<!--[if !IE]>end table_wrapper<![endif]-->
							
						</div>
						
						<!--[if !IE]>start pagination<![endif]-->
							<div class="pagination_wrapper">
							<span class="pagination_top"></span>
							<div class="pagination_middle">
							<div class="pagination">
								<span class="page_no">Page 1 of 217</span>
								
								<ul class="pag_list">
									<li><a href="#" class="pag_nav"><span><span>Previous</span></span></a> </li>
									<li><a href="#">1</a></li>
									<li><a href="#" class="current_page"><span><span>2</span></span></a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li>[...]</li>
									<li><a href="#">217</a></li>
									<li><a href="#" class="pag_nav"><span><span>Next</span></span></a> </li>
								</ul>
							</div>
							</div>
							<span class="pagination_bottom"></span>
							</div>
						<!--[if !IE]>end pagination<![endif]-->
						
						
						<span class="section_content_bottom"></span>
					</div>
					<!--[if !IE]>end section content<![endif]-->
				</div>
				<!--[if !IE]>end section<![endif]-->
			
			</div>
		</div>
		<!--[if !IE]>end content<![endif]-->
		request.setAttribute("companyCode", companyCode);
		<%@include file="Footer.jsp" %>