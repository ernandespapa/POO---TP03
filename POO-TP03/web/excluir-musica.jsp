<%-- 
    Document   : excluir-musica
    Created on : 16/09/2019, 11:29:08
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
        <title>Excluir - Musica</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        
           <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroMusica m = DbBanda.getMusicas().get(i);
            if (request.getParameter("excluir") != null) {
                DbBanda.getMusicas().remove(i);
                response.sendRedirect("lista-musica.jsp?="+i);
            }
        %>
        
         <form>
                <fieldset>
                    <h2>Excluir - Musica</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" readonly="" value="<%=m.getNomeMusica()%>"/>
                    </div>
                    
                    <br/><input type="submit" name="excluir" class="btn btn-primary" value="Confirmar exclusão"/>
                </fieldset>
            </form>
                    
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
