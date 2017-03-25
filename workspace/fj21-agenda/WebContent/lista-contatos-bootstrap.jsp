<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
</head>

<body>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/> 
	
	<table id="example" class="display" cellspacing="0" width="100%">
	   <thead>
		<tr>
			<th>Nome</th>
			<th>email</th>
			<th>Endereço</th>
			<th>Dt.Nascimento</th>
		</tr>
	   </thead>
	   <tbody>
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				<td>${contato.email}</td>
				<td>${contato.endereco}</td>
				<td>${contato.dataNascimento.time}</td>
			</tr>
		</c:forEach>
	    </tbody>
	</table>


<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>	

</body>
</html>