<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

  <div class="container">
	   <h3>Adicionar tarefas</h3>
	   
	   <form:errors path="tarefa.descricao"/>   
	   <form action="adicionaTarefa" method="post">
	   		<div class="form-group">
	   			<label for="descricao">Descricao:</label>
	   	    	<textarea name= "descricao" type="descricao" class="form-control" id="descricao" rows="5" placeholder="Informe seu texto"></textarea>

	    <%-- 			<input type="descricao" class="form-control" id="descricao" placeholder="Informe seu texto"> --%>
	   		
	   		</div>
   	
	   	<button type="submit" class="btn btn-default">Enviar</button>
	   </form>
  </div>   
</body>
</html>