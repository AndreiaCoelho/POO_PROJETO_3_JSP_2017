<%-- 
    Document   : amortizacao-constante
    Created on : 14/04/2017, 01:43:49
    Author     : Andréia
--%>

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

    <body>
        <%
            DecimalFormat df = new DecimalFormat("#.##"); 
            double vlp = 0;
            int per = 0;
            double txjrs = 0;
            double jurosperiodo = 0;
            double totaljuros = 0;
            double amortizacao = 0;
            double amortizacaoaux = 0;
            double prestacao = 0;
            double prestacaototal = 0;
            double saldodevedor = 0;

            try {
                per = Integer.parseInt(request.getParameter("periodo"));
                txjrs = Integer.parseInt(request.getParameter("juros"));
                vlp = Integer.parseInt(request.getParameter("valorprincipal"));
                amortizacao = vlp / per;
                saldodevedor = vlp;
            } catch (Exception e) {
            }

        %>



        <main>
            <div class="container">
                <h1 class="section-title">Amortização Constante</h1>
                <form>
                    <table border="2">
                        <tr>
                            <th colspan='3'>
                                Entrada de Dados
                            </th>
                        </tr>
                        <tr>
                            <th>
                                Valor principal
                            </th>
                            <th>
                                Juros em %
                            </th>
                            <th>
                                Período em meses
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="valorprincipal"  />
                            </td>
                            <td>
                                <input type="text" name="juros" />
                            </td>
                            <td>
                                <input type="text" name="periodo">
                            </td>
                        </tr>
                    </table>

                    <br>
                    <center><input class="btn btn-default" type='submit' value='Calcular'/></center>

                    <br/>
                    <table border="2">
                        <tr>

                            <th>
                                Período
                            </th>

                            <th>
                                Juros
                            </th>

                            <th>
                                Prestação
                            </th>
                            <th>
                                Amortização
                            </th>
                            <th>
                                Saldo devedor
                            </th>

                            <%for (int i = 1; i <= per; i++) {%>
                        <tr>
                            <th> <%=i%></th>
                            <th> <%= jurosperiodo = (per - i + 1) * (txjrs / 100) * (amortizacao)%> </th>
                            <th> <%= prestacao = amortizacao + jurosperiodo%> </th>
                            <th> <%= amortizacao%> </th>
                            <th> <%=  saldodevedor = saldodevedor - amortizacao%> </th>
                        </tr>

                        <%= amortizacaoaux = amortizacaoaux + amortizacao%>
                        <%= totaljuros = totaljuros + jurosperiodo%>
                        <%= prestacaototal = prestacaototal + prestacao%> 
                        <%}%>


                    </table>

                    <h4>Total:</h4> 
                    <h4>Amortização : <%= amortizacaoaux%></h4>
                    <h4>Juros : <%= totaljuros%></h4>
                    <h4>Prestação : <%= prestacaototal%> </h4>
                    </br></br>
                   <%@include file="WEB-INF/jspf/rodape.jspf" %>
                    </body>
                    </html>
