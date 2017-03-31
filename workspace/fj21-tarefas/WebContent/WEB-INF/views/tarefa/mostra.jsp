<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<h3>Alterar tarefa - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" />
		
		Descrição: <br />
		<textarea name="descricao" rows="5" cols="100"><%-- 
		--%>${tarefa.descricao}<%--
		 --%></textarea>
		 <br />
		 
		 Finalizado? <input type="checkbox" name="finalizado"
		 	value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />

<%-- 
		 Data de finalizaçao: <caelum:campoData id="dataFinalizacao" /> <br />
--%>		 

		 Data de finalização: <br />		
		 <input type = "text" name="dataFinalizacao"
		 	value="<fmt:formatDate value = "${tarefa.dataFinalizacao.time}"
		 	pattern="dd/MM/yyyy" />"/>
		<br />

		
		<input type="submit" value="Alterar" />
	</form>
</body>
</html>