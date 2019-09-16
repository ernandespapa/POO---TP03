<%-- 
    Document   : inserir-musica
    Created on : 16/09/2019, 01:52:43
    Author     : Eric
--%>

<%@page import="br.com.fatecpg.web.CadastroMusica"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Música</title>
    </head>
    <body>
        <%
            int codigoAlbum = Integer.parseInt(request.getParameter("codigoAlbum"));

            if (request.getParameter("inserir") != null) {
                String nomeMusica = request.getParameter("nomeMusica");

                CadastroMusica musica = new CadastroMusica();
                musica.setNomeMusica(nomeMusica);
                musica.setIdAlbum(codigoAlbum);
                DbBanda.getMusicas().add(musica);
                response.sendRedirect("lista-musica.jsp?codigoAlbum="+codigoAlbum);
            }

        %>
        <form>

            <h2>Inserir - Album</h2>
            <div>
                <label>Nome: </label>
                <input type="text" name="nomeMusica" class="form-control"/>
                <input type="hidden" name="codigoAlbum" value="<%=codigoAlbum%>">
            </div>


            <input type="submit" name="inserir" value="Inserir" class="btn btn-primary"/>
        </form>
    </body>
</html>

