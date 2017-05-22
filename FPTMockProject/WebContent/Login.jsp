<%@page import="common.StringProcess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/custom.css" />
<link rel="stylesheet" href="css/style.css" />
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<body>
	
	<div id = "header">
			<nav class="navbar navbar-custom navbar-fixed-top">
			<div class="container">
		    	<div class="navbar-header">
				    <a class="navbar-brand" href="#">Laluna</a>
				 </div>
				<ul class="nav navbar-nav navbar-right">
				     <li><html:link action=""> <span class="glyphicon glyphicon-user"></span> Đăng Kí</html:link></li>
		      	</ul>
		  	</div>
			</nav>
	</div>	
	<!-- end header -->
	
	<!-- start content -->
	<br><br><br><br>
	<div class = "text-center">
		<h3 style="color:#0072BC"><strong>ĐĂNG NHẬP TÀI KHOẢN LALUNA</strong></h3>
	</div>
	<div id = "content" >
		<div class="container">
    		<div class="row">
	       		 <div class="col-md-6 col-md-offset-3">
	            	<div class="panel panel-default">
	                <div class="panel-heading">
	                    <span class="glyphicon glyphicon-lock"></span> Đăng Nhập</div>
	                <div class="panel-body">
					<html:form  styleClass="form-horizontal" action="/log-in" method="post" >
		                    <div class="form-group">
			                       <p class="col-md-3 control-label pull-left">Tên đăng nhập</p>
			                       <div class="col-sm-8">
			                           <html:text styleClass="form-control" property="username" tabindex="1"></html:text>
			                       </div>
			                       <div class = "col-sm-9 col-sm-offset-3">
			                      		 <p style = "color:red">
										<html:errors property="usernameError"/>
			                       </div>
		                   	</div>
		                   	<div class="form-group">
			                       <p class="col-sm-3 control-label pull-left">Mật Khẩu</p>
			                       <div class="col-sm-8">
			                           <html:password styleClass="form-control" property="password" tabindex="2"></html:password>
			                           <p style = "color:red">
			                           <html:errors property="passwordError"/>
		                        </div>
	                    	</div>
		                    
		                    <div class="form-group">
		                        <div class="col-sm-offset-3 col-sm-9">
		                            <div class="checkbox">
		                                <label>
		                                    <input type="checkbox" tabindex="3"/>
		                                    Ghi nhớ đăng nhập
		                                </label>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="row form-group">
								<div class="col-lg-9 col-lg-offset-3">
									<p style="color: red;">
										<bean:write name="loginForm" property="notice"/>
									</p>
								</div>
							</div>
		                    <div class="form-group last">
		                        <div class="col-sm-offset-3 col-sm-9">
		                            <html:submit styleClass="btn btn-success btn-sm" property="submit" value="Đăng Nhập" tabindex="4">
		                                Đăng Nhập
		                            </html:submit>
		                            <button type="reset" class="btn btn-default btn-sm" tabindex="5">
		                                Reset
		                            </button>
		                        </div>
		                    </div>
	                    </html:form>
	                </div>
	                <div class="panel-footer">
	                    Chưa có tài khoản ? <a href="http://www.google.com" tabindex="6">Đăng Kí</a></div>
	            </div>
	        </div>
	    </div>
	    <!-- end content -->
	</div>
	</div>
</body>
</html>
