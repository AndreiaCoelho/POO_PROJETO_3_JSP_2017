<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
         <title>Amortização Americana</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
          
        <h1>Amortização Americana</h1>
        </br></br>
        
         <% int p = 0;
            float v = 0, j = 0;

            try {
                p = Integer.parseInt(request.getParameter("periodo"));
                v = Float.parseFloat(request.getParameter("principal"));
                j = Float.parseFloat(request.getParameter("juros"));
            } catch (Exception e) {
            }

            DecimalFormat cv = new DecimalFormat("#0.00");
            DecimalFormat cj = new DecimalFormat("#0.00");
        %>

        <%@include file="WEB-INF/jspf/entradaDados.jspf" %>
        <div class="content">
            <table class="ui celled table">
                <tr>
                    <th>Mês</th>
                    <th>Saldo Devedor(R$)</th>
                    <th>Amortização(R$)</th>
                    <th>Juros(R$)</th>
                </tr>
                <%for (int i = 0; i <= p; i++) {%>
                <tr>
                    <td><%=i%></td>
                    <%if (i == p) {
                            out.println("<td>" + cv.format(0) + "</td>");
                        } else {
                            out.println("<td>" + cv.format(v) + "</td>");
                        }%>

                    <%if (i == p) {
                            out.println("<td>" + cv.format(v) + "</td>");
                        } else {
                            out.println("<td>" + cv.format(0) + "</td>");
                        }%>

                    <%if (i != 0) {
                            out.println("<td>" + cj.format(v * j * 0.01) + "</td>");
                        } else {
                            out.println("<td>" + cj.format(0) + "</td>");
                        }%>
                </tr>

                <%}%>
            </table>
            <div class="entrada">
                <div class="ui mini statistic">
                    <div class="value">
                       Total Juros(R$)<%= cj.format(p * v * j * 0.01)%>
                    </div>
                    <div class="label">Total de Juros </div>
                </div>
                <div class="ui mini statistic">
                    <div class="value">
                        Total Parcela(R$)<%=cv.format((p * v * j * 0.01) + v)%>
                    </div>
                    <div class="label">Total a Pagar </div>
                </div>
            </div>
        </div>
                    
                            </br></br>

        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>