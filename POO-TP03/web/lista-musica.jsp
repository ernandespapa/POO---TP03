<%-- 
    Document   : lista-musica
    Created on : 16/09/2019, 01:50:53
    Author     : Eric
--%>

<%@page import="br.com.fatecpg.web.CadastroMusica"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int codigoAlbum = -1;
    if (request.getParameter("codigoAlbum") != null) {
        codigoAlbum = Integer.parseInt(request.getParameter("codigoAlbum"));
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Música</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h3>Lista - Música</h3>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Comandos</th>

                </tr>
            </thead>
            <tbody>
                <%for (CadastroMusica musica : DbBanda.getMusicas()) {%>
                <%int i = DbBanda.getMusicas().indexOf(musica);%>
                <%if (musica.getIdAlbum() == codigoAlbum) {%>
                <tr class="table-secondary">
                    <td><%=i%></td>
                    <td><%=musica.getNomeMusica()%></td>

                    <td>
                        <a href="alterar-banda.jsp?i=<%=i%>"><button>Alterar</button></a>
                        <a href="excluir-banda.jsp?i=<%=i%>"><button>Excluir</button></a>
                    </td>
                </tr>
                <%  }
                    }
                %>
            </tbody>
        </table>
        <a href="inserir-musica.jsp?codigoAlbum=<%=codigoAlbum%>"><button>Inserir</button></a>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
