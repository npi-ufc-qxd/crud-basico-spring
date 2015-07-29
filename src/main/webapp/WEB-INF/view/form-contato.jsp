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
	<c:if test="${action eq 'cadastrar' }">
		<c:set var="url" value="/adicionar"></c:set>
		<c:set var="titulo" value="Novo Contato"></c:set>
		<c:set var="botao" value="Adicionar"></c:set>
	</c:if>

	<c:if test="${action eq 'editar' }">
		<c:set var="url" value="/editar/${contato.id }"></c:set>
		<c:set var="titulo" value="Editar Contato"></c:set>
		<c:set var="botao" value="Editar"></c:set>
	</c:if>


	<h2>${titulo }</h2><br>
	
	<form:form id="adicionarContatoForm" commandName="contato" servletRelativeAction="${url }" method="POST">
		<label>Nome: </label>
		<form:input type="text" path="nome"/><br>
		<label>Email: </label>
		<form:input type="text" path="email"/><br>
		<label>Telefone: </label>
		<form:input type="text" path="telefone"/><br>
		
		<input type="submit" value="${botao }"/>
	</form:form>
</body>
</html>