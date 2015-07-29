<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Contatos</title>
</head>
<body>
	<h2>Contatos</h2>
	<c:forEach items="${contatos}" var="contato">
		<label>Nome: ${contato.nome } <p>Teste</p></label> |
		<a href="/contatos/remover/${contato.id }">remover</a><br>
		<a href="/contatos/editar/${contato.id }">editar</a><br>
	</c:forEach>
	<a href="/contatos/adicionar">Adicionar</a>
</body>
</html>