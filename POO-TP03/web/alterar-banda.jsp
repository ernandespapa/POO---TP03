<%-- 
    Document   : alterar-banda
    Created on : 10/09/2019, 16:44:13
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.web.CadastroBanda"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Alterar - Banda</title>
    </head>
    <body>
        <a  href="home.jsp">Home</a>
      
        <a  href="lista-banda.jsp">Cadastro de Bandas </a>
    
        <a  href="lista-discos.jsp">Cadastro de Discos</a>
    
        <a  href="lista-musicos.jsp">Cadastro de Musicos</a>
         <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroBanda c = DbBanda.getBandas().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome");
             
                c.setNome(nome);
                DbBanda.getBandas().set(i, c);
                response.sendRedirect("lista-banda.jsp");
            }
        %>

        
         <form>
                
                    <h2>Alterar Banda</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" value="<%=c.getNome()%>"/>
                    
                    </div>

                    <input type="submit" name="alterar" class="btn btn-primary" value="Alterar"/>
            </form>
    </body>
</html>
