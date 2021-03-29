<%-- 
    Document   : index
    Created on : 22 de mar. de 2021, 16:56:00
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <script>
            function pulaLinha(){
                document.write("<br>");
            }
            function mostra(frase){              
                document.write("<h2>" + frase + "</h2>");    
                pulaLinha();
            }
                mostra("Fazendo tabela price!");
                mostra("Boa Pupo");
            </script>

        <%@include file="WEB-INF/jspf/rodape.jspf" %>
     </div>
     </body>
</html>
