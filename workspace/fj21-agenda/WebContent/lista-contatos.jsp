<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
</head>

<body>

	<c:import url="cabecalho.jsp" />
	
	<table id="example" class="display" cellspacing="0" width="100%">
	   <thead>
		<tr>
			<th>Ação</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Endereço</th>
			<th>Dt.Nascimento</th>
		</tr>
	   </thead>
	   <tbody>
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
				
				<td>${contato.nome}</td>
				<td>
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if>
					
					<c:if test="${empty contato.email}">
						E-mail não informado
					</c:if>					
				</td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
			</tr>
		</c:forEach>
	    </tbody>
	</table>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>