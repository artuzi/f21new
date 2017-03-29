<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*,
   			 	br.com.caelum.agenda.dao.*,
				br.com.caelum.agenda.modelo.*,
				java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
		//Connection connection = (Connection) req.getAttribute("conexao");
		
		//precisa pegar a connection na requisicao. No ultimo exercicio foi colocado
		//a connection na request via filtro.
		ContatoDao dao = new ContatoDao(connection);
		List<Contato> contatos = dao.getLista();
		
		for (Contato contato:contatos) {
		%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				
		<% 	String dataFormatada = 
				new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime()); %>
				
				<td><%=contato.getDataNascimento().getTime() %></td>
				<td><%=dataFormatada%></td>

			</tr>
        <%
        }
        %>
	</table>
</body>
</html>