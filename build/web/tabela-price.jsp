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
        <%@include file="WEB-INF/jspf/menu.jspf"%>
         <script>
            function pulaLinha(){
                document.write("<br>");
            }
            function mostra(frase){              
                document.write("<h2>" + frase + "</h2>");    
                
            }
                mostra("Tabela Price!");
            </script>
        <form>
           <label>Valor Presente: </label><br>
           <input type="number" name="valorPresente"/><br>
           <label> Taxa de Juros: </label><br>
           <input type="number" name="i" /><br>
           <label> Número de Periodos: </label><br>
           <input type="number" name="meses" /><br><br>
           <input type="submit" name="somar" value="Calcular"/> <br>
             <%
                 try{
                double valorPresente = Double.parseDouble(request.getParameter("valorPresente"));
         out.println("<h2>Valor Presente = " + valorPresente + "</h2>"); 
         double iJuros = Double.parseDouble(request.getParameter("i"));
         out.println("<h2>Taxa de Juros = " + iJuros + "% </h2>");
         double meses = Double.parseDouble(request.getParameter("meses"));
         out.println("<h2>Número de períodos = " + meses + " meses </h2>");
         double i = iJuros / 100;
         double elevado = java.lang.Math.pow((1+i),meses);
         double pmt = valorPresente * (i/(1 - (1/elevado)));
         out.println("<h2>Valor da Parcela = " + pmt + "</h2>");
         } catch(Exception ex){  
         }
                 %>
                 </div>
        </form>
        
         <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
