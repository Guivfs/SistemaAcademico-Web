<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@page import="java.text.SimpleDateFormat" %>
    <%@ page import="java.util.ArrayList" %>
      <%@ page import="java.util.List" %>
        <%@ page import="br.edu.exemplo.model.Aluno" %>

          <!DOCTYPE html>
          <html>

          <head>
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
            <title>Lista Alunos</title>
          </head>

          <body>
            <!-- NAVBAR -->
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
              <div class="container-fluid">
                <a class="navbar-brand" href="/SistemaAcademico-web/index.html">
                  <img
                    src="https://i0.wp.com/2016.saopaulo.wordcamp.org/files/2016/10/unicid_pref_pos.png?fit=1000%2C373&ssl=1"
                    width="200">
                </a>
                <a class="nav-link navbar-brand" href="/SistemaAcademico-web/index.html">Home</a>
                <a class="nav-link navbar-brand" href="/SistemaAcademico-web/html/incluir.html">Incluir</a>
                <a class="nav-link navbar-brand" href="/SistemaAcademico-web/ServletAluno?cmd=listar">Listar</a>
              </div>
              </div>
              </div>
            </nav>
            <!-- TABELA -->
            <div class="container">
              <div class="col-12 text-center">
                <h3 class="text-center">Lista de alunos</h3>
                <hr>
                <table class="table table-hover">
                  <thead>
                    <tr class="table-group-divider table-secondary">
                      <th class="col" scope="ra">RA</th>
                      <th class="col" scope="nome">Nome</th>
                      <th class="col" scope="endereco">Endereço</th>
                      <th class="col" scope="email">E-mail</th>
                      <th class="col" scope="nascimento">Nascimento</th>
                      <th class="col" scope="periodo">Periodo</th>
                      <th class="col" colspan="2" scope="acao">Ação</th>
                    </tr>
                  </thead>
                  <% SimpleDateFormat data=new SimpleDateFormat("dd/MM/yyyy"); List<Aluno> lista = new ArrayList<Aluno>
                      ();
                      lista = (ArrayList) request.getAttribute("alunosList");
                      for (Aluno a : lista) {
                      %>
                      <tbody class='table-group-divider'>
                        <tr>
                          <td scope="ra">
                            <%=a.getRa()%>
                          </td>
                          <td scope="nome">
                            <%=a.getNome()%>
                          </td>
                          <td scope="endereco">
                            <%=a.getEndereco()%>
                          </td>
                          <td scope="email">
                            <%=a.getEmail()%>
                          </td>
                          <td scope="nascimento">
                            <%=data.format(a.getDataNascimento())%>
                          </td>
                          <td scope="periodo">
                            <%=a.getPeriodo()%>
                          </td>
                          <td scope="acao">
                            <form action="../SistemaAcademico-web/ServletAluno?cmd=atu&txtRa=<%=a.getRa()%>"
                              method="post">
                              <input type="hidden" size="10" value="Enviar">
                              <button type="submit">Atualizar</button>
                            </form>
                            <form action="../SistemaAcademico-web/ServletAluno?cmd=exc&txtRa=<%=a.getRa()%>"
                              method="post">
                              <input type="hidden" value="Enviar">
                              <button type="submit" size="10">Excluir</button>
                          <td>
                        </tr colspan="6s">
                        <% } %>
                      </tbody>
                </table>
              </div>
            </div>
          </body>

          </html>