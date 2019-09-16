<%-- 
    Document   : lista-album
    Created on : 16/09/2019, 00:23:53
    Author     : Rodrigo
--%>

<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page import="br.com.fatecpg.web.CadastroAlbum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int codigoBanda = -1;
    if (request.getParameter("codigoBanda") != null) {
        codigoBanda = Integer.parseInt(request.getParameter("codigoBanda"));
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Album</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h3>Lista - Album</h3>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Comandos</th>

                </tr>
            </thead>
            <tbody>
                <%for (CadastroAlbum album : DbBanda.getAlbuns()) {%>
                <%int i = DbBanda.getAlbuns().indexOf(album);%>
                <%if (album.getIdBanda() == codigoBanda) {%>
                <tr class="table-secondary">
                    <td><%=i%></td>
                    <td><%=album.getNomeAlbum()%></td>

                    <td>
                        <a href="alterar-album.jsp?i=<%=i%>"><button>Alterar</button></a>
                        <a href="excluir-album.jsp?i=<%=i%>"><button>Excluir</button></a>
                        <a href="lista-musica.jsp?codigoAlbum=<%=i%>"><button>Listar Música</button></a>
                    </td>
                </tr>
                <%  }
                    }
                %>
            </tbody>
        </table>
        <a class="btn btn-primary" href="inserir-album.jsp?codigoBanda=<%=codigoBanda%>">Inserir</a>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
