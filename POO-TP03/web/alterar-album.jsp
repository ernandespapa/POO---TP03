<%-- 
    Document   : alterar-album
    Created on : 16/09/2019, 11:10:55
    Author     : Rodrigo
--%>

<%@page import="br.com.fatecpg.web.CadastroAlbum"%>
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
        <%@include file="WEB-INF/jspf/header.jspf"%>
      
        
         <%
             
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroAlbum a = DbBanda.getAlbuns().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome");
             
                a.setNomeAlbum(nome);
                DbBanda.getAlbuns().set(i, a);
                response.sendRedirect("lista-album.jsp?codigoBanda="+i);
            } else if (request.getParameter("cancelar") != null) {

                response.sendRedirect("lista-album.jsp?codigoBanda=" + i);

            }
        %>

        
         <form>
                
                    <h2>Alterar Album</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" value="<%=a.getNomeAlbum()%>"/>
                    
                    </div>

                    <input type="submit" name="alterar" class="btn btn-primary" value="Alterar"/>
                    <input type="submit" name="cancelar" value="Cancelar" class="btn btn-primary"/>
            </form>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
