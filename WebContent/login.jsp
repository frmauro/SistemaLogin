<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema Login</title>
<script type="text/javascript">

function validarLogin(){
	if (document.formLogin.txtUsuario.value == ""){
		alert("Usu�rio n�o informado!");
		return false;
	}
	
	if (document.formLogin.txtSenha.value == ""){
		alert("Senha n�o informada!");
		return false;
	}

	document.formLogin.submit();
}

</script>

</head>
<body>

	<form action="login" method="post" name="formLogin">
		<p align="center">
		<table cellpadding="6" >
			<tr>
				<td>Usu�rio:</td>
				<td><input type="text" name="txtUsuario" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="text" name="txtSenha" /></td>
			</tr>
			<tr>
				<td colspan="2"  align="center" ><input type="button" value="Logar" onClick="validarLogin()" /></td>
			</tr>
		</table>
		</p>


	</form>

</body>
</html>