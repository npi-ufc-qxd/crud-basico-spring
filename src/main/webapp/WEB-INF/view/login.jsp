<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>

<body>

	<div class="login-container" align="center">
		<div class="login-form">
			
			<div class="login-text">
				<span id="title">Login</span>
			</div>
				<form:form role="form" servletRelativeAction="/j_spring_security_check"  method="post" id="login-form" autocomplete="off" class="form-horizontal">
	
					<c:if test="${not empty erro}">
						<div class="login-error"><i class="fa fa-times-circle-o"></i> ${erro}</div>
					</c:if>
		
					<c:if test="${not empty msg}">
						<div class="msg"> <i class="fa fa-info-circle"></i>${msg}</div>
					</c:if>
				
					<div class="form-group">
						<div id="inputLogin" class="form-inline input-group input-login">
						    <span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" name="j_username" id="login" class="form-control" placeholder="login">
						</div>
					</div>
										
					<div class="form-group">
						<div id="inputSenha" class="form-inline input-group input-login">
						    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
						    <input type="password" name="j_password" id="key" class="form-control" placeholder="senha">
						</div>
					</div>
					

					<div style="text-align: center;">
						<button class="btn btn-siaf btn-login hvr-icon-forward" name="submit" type="submit" value="Login" value="Login">Login</button>
					</div>
				</form:form>
		</div>
	</div>

</body>
</html>