<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
	<%@page import="java.text.SimpleDateFormat" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
				crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
				crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
				integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
				crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
				integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
				crossorigin="anonymous"></script>
			<title>Sistema Acadêmico</title>
		</head>

		<body>
			<!-- NAVBAR -->
			<nav class="navbar navbar-expand-lg bg-body-tertiary">
				<div class="container-fluid">
					<a class="navbar-brand" href="/SistemaAcademico-web/index.html">
						<img src="https://i0.wp.com/2016.saopaulo.wordcamp.org/files/2016/10/unicid_pref_pos.png?fit=1000%2C373&ssl=1"
							width="200">
					</a>
					<a class="nav-link navbar-brand" href="/SistemaAcademico-web/index.html">Home</a>
					<a class="nav-link navbar-brand" href="/SistemaAcademico-web/html/incluir.html">Incluir</a>
					<a class="nav-link navbar-brand" href="ServletAluno?cmd=listar">Listar</a>
				</div>
				</div>
				</div>
			</nav>
			<div class="container">
				<div class="col-12 text-center">
					<center>
						<h2>Atualizar Aluno</h2>
						<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
						<% SimpleDateFormat data=new SimpleDateFormat("dd/MM/yyyy"); %>
							<form action="ServletAluno?cmd=atualizar" method="post">
								<table border="1">
									<tr>
										<td>RA:</td>
										<td><input type="text" size="60" name="txtRa" value="<%=aluno.getRa()%>"
												readonly="readonly" /></td>
									</tr>
									<tr>
										<td>Nome:</td>
										<td><input type="text" size="60" name="txtNome" value="<%=aluno.getNome()%>" />
										</td>
									</tr>
									<tr>
										<td>E-mail:</td>
										<td><input type="text" size="60" name="txtEmail"
												value="<%=aluno.getEmail()%>" />
										</td>
									</tr>
									<tr>
										<td>Endereço:</td>
										<td><input type="text" size="60" name="txtEndereco"
												value="<%=aluno.getEndereco()%>" /></td>
									</tr>

									<tr>
										<td>Nascimento (dd/mm/aaaa):</td>
										<td><input type="date" size="60" name="txtData"
												value="<%=aluno.getDataNascimento()%>" />
										</td>
									</tr>
									<tr>
										<td>Período:</td>
										<td><select name="cmbPeriodo" size="1">
												<option>
													<%=aluno.getPeriodo()%>
												</option>
												<option>Manhã</option>
												<option>Tarde</option>
												<option>Noite</option>
											</select>
										</td>

									</tr>
									<tr>
										<th colspan="2"><input type="submit" value="Confirmar Atualização" /></th>
									</tr>
								</table>
							</form>
					</center>
				</div>
			</div>
		</body>

		</html>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Acadêmico</title>
</head>
<body>
	<h2>Atualizar Aluno</h2>
	<jsp:useBean id="aluno" scope="session" class="br.edu.exemplo.model.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<form action="ServletAluno?cmd=atualizar" method="post">
		<table border="1">
			<tr>
				<td>RA:</td>
				<td><input type="text" size="60" name="txtRa"
					value="<%=aluno.getRa()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Nome:</td>
				<td><input type="text" size="60" name="txtNome"
					value="<%=aluno.getNome()%>"  /></td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><input type="text" size="60" name="txtEmail"
					value="<%=aluno.getEmail()%>"  /></td>
			</tr>
			<tr>
				<td>Endereço:</td>
				<td><input type="text" size="60"	name="txtEndereco" value="<%=aluno.getEndereco()%>"
					 /></td>
			</tr>

			<tr>
				<td>Nascimento (dd/mm/aaaa):</td>
				<td><input type="date" size="60" name="txtData" value="<%=aluno.getDataNascimento()%>" /></td>
			</tr>
			<tr>
				<td>Período:</td>
				<td><select name="cmbPeriodo" size="1">
						<option><%=aluno.getPeriodo()%></option>
						<option>Manhã</option>
						<option>Tarde</option>
						<option>Noite</option>
				     </select>		
				</td>
				
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="Confirmar Atualização" /></th>
			</tr>

			<tr>
				<th colspan="2"><a href="index.html">Página Principal</a></th>
			</tr>
		</table>
	</form>
</body>
</html>
>>>>>>> 1e480b074c92810e61d0926adb7fa2a460b99499
