<%-- 
    Document   : inserir-album
    Created on : 16/09/2019, 00:27:43
    Author     : Eric
--%>

<%@page import="br.com.fatecpg.web.CadastroAlbum"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Album</title>
    </head>
    <body>
        <%
            int codigoBanda = Integer.parseInt(request.getParameter("codigoBanda"));

            if (request.getParameter("inserir") != null) {
                String nomeAlbum = request.getParameter("nomeAlbum");

                CadastroAlbum album = new CadastroAlbum();
                album.setNomeAlbum(nomeAlbum);
                album.setIdBanda(codigoBanda);
                DbBanda.getAlbuns().add(album);
                response.sendRedirect("lista-album.jsp?codigoBanda=" + codigoBanda);
            } else if (request.getParameter("cancelar") != null) {

                response.sendRedirect("lista-album.jsp?codigoBanda=" + codigoBanda);

            }

        %>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <form>

            <h2>Inserir - Album</h2>
            <div>
                <label>Nome: </label>
                <input type="text" name="nomeAlbum" class="form-control"/>
                <input type="hidden" name="codigoBanda" value="<%=codigoBanda%>">
            </div>


            <input type="submit" name="inserir" value="Inserir" class="btn btn-primary"/>
            <input type="submit" name="cancelar" value="Cancelar" class="btn btn-primary"/>
        </form>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>

