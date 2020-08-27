<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logado</title>
</head>
<body>
	<%
		String nomeUsuario = (String) session.getAttribute("usuarioAutenticado");
	if (nomeUsuario == null)
		throw new ServletException("Nenhum usuario está logado!!");
	%>

	Seja bem vindo:
	<%=nomeUsuario%>
	|
	<a href="remover.jsp">Sair</a><br />
	<h2>Logado com sucesso!!</h2>
</body>
</html>