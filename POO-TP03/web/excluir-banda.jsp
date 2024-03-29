<%-- 
    Document   : excluir-banda
    Created on : 10/09/2019, 16:57:26
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.web.CadastroBanda"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir - Banda</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        
           <%
            int i = Integer.parseInt(request.getParameter("i"));
            CadastroBanda c = DbBanda.getBandas().get(i);
            if (request.getParameter("excluir") != null) {
                DbBanda.getBandas().remove(i);
                response.sendRedirect("lista-banda.jsp");
            }
        %>
        
         <form>
                <fieldset>
                    <h2>Excluir - Banda</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" readonly="" value="<%=c.getNome()%>"/>
                    </div>
                    
                    <br/><input type="submit" name="excluir" class="btn btn-primary" value="Confirmar exclusão"/>
                </fieldset>
            </form>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
