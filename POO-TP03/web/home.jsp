<%-- 
    Document   : home
    Created on : 10/09/2019, 16:15:21
    Author     : ernandes
--%>

<%@page import="br.com.fatecpg.web.CadastroMusica"%>
<%@page import="br.com.fatecpg.web.CadastroAlbum"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page import="br.com.fatecpg.web.CadastroBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Bandas</title>
    </head>
    <body>
        <div>

            <a  href="home.jsp">Home</a>

            <a  href="lista-banda.jsp">Cadastro de Bandas </a>

            <a  href="lista-discos.jsp">Cadastro de Discos</a>

            <a  href="lista-musica.jsp">Cadastro de Musicos</a>

            <%

                ArrayList<CadastroBanda> bandas = DbBanda.getBandas();
                ArrayList<CadastroAlbum> albuns = DbBanda.getAlbuns();
                ArrayList<CadastroMusica> musicas = DbBanda.getMusicas();

            %>

            <h2>Total Bandas: <%= bandas.size() - 1%></h2>
            <h2>Total Albuns: <%= albuns.size() - 1%></h2>
            <h2>Total Músicas: <%= musicas.size() - 1%></h2>

        </div>
    </body>
</html>
