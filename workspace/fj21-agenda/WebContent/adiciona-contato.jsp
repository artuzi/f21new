<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona contato</title>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato" method="POST">
		Nome: <input type="text" name="nome"/><br/>
		E-mail: <input type="text" name="email" /><br/>
		Endereço: <input type="text" name="endereco" /><br/>
		Data Nascimento: <caelum:campoData id="dataNascimento" /> <br />
			
		<input type="submit" value="Gravar" />
	</form>
</body>
</html>