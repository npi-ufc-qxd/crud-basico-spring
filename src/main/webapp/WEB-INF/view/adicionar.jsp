<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Contatos</title>
</head>
<body>
	<h2>Novo Contato</h2><br>
	
	<form:form id="adicionarContatoForm" commandName="contato" servletRelativeAction="/adicionar" method="POST">
		<label>Nome: </label>
		<form:input type="text" path="nome"/><br>
		<label>Email: </label>
		<form:input type="text" path="email"/><br>
		<label>Telefone: </label>
		<form:input type="text" path="telefone"/><br>
		
		<input type="submit" value="Adicionar"/>
	</form:form>
</body>
</html>