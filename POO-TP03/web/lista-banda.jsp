<%-- 
    Document   : lista-banda
    Created on : 10/09/2019, 16:33:53
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.web.CadastroBanda"%>
<%@page import="br.com.fatecpg.web.DbBanda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Bandas</title>
    </head>
    <body>
        <a  href="home.jsp">Home</a>
      
        <a  href="lista-banda.jsp">Cadastro de Bandas </a>
    
        <a  href="lista-discos.jsp">Cadastro de Discos</a>
    
        <a  href="lista-musicos.jsp">Cadastro de Musicos</a>
        <h3>Lista - Bandas</h3>
                <table border="1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Comandos</th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <%for (CadastroBanda c : DbBanda.getBandas()) {%>
                        <%int i = DbBanda.getBandas().indexOf(c);%>
                        <tr class="table-secondary">
                            <td><%=i%></td>
                            <td><%=c.getNome()%></td>
                            
                            <td>
                                <a href="alterar-banda.jsp?i=<%=i%>"><button>Alterar</button></a>
                                <a href="excluir-banda.jsp?i=<%=i%>"><button>Excluir</button></a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
                <a href="inserir-banda.jsp"><button>Inserir</button></a>
    </body>
</html>
