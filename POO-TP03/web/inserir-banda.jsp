<%-- 
    Document   : inserir-banda
    Created on : 10/09/2019, 16:50:34
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.web.CadastroBanda"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir - Pessoa</title>
    </head>
    <body>
        <a  href="home.jsp">Home</a>
      
        <a  href="lista-banda.jsp">Cadastro de Bandas </a>
    
        <a  href="lista-discos.jsp">Cadastro de Discos</a>
    
        <a  href="lista-musicos.jsp">Cadastro de Musicos</a>
        <%
            if (request.getParameter("inserir") != null) {
                String nome = request.getParameter("nome");
                
                CadastroBanda c = new CadastroBanda();
                c.setNome(nome);
                DbBanda.getBandas().add(c);
                response.sendRedirect("lista-banda.jsp");
            }
        %>
        <form>
                
                    <h2>Inserir - Bandas</h2>
                    <div>
                        <label>Nome: </label>
                        <input type="text" name="nome" class="form-control"/>
                    </div>
                    
                    
                    <input type="submit" name="inserir" value="Inserir" class="btn btn-primary"/>
            </form>
    </body>
</html>
