<%-- 
    Document   : alterar-musica
    Created on : 16/09/2019, 11:11:14
    Author     : Rodrigo
--%>

<%@page import="br.com.fatecpg.web.CadastroMusica"%>
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
            CadastroMusica m = DbBanda.getMusicas().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome");
             
                m.setNomeMusica(nome);
                DbBanda.getMusicas().set(i, m);
                response.sendRedirect("lista-musica.jsp?codigoAlbum="+i);
            } else if (request.getParameter("cancelar") != null) {

                response.sendRedirect("lista-musica.jsp?codigoAlbum=" + i);

            }
        %>

        
         <form>
                
                    <h2>Alterar Album</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" value="<%=m.getNomeMusica()%>"/>
                    
                    </div>

                    <input type="submit" name="alterar" class="btn btn-primary" value="Alterar"/>
            </form>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
