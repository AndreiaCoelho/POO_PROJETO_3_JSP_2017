<%-- 
    Document   : home
    Created on : 14/04/2017, 01:43:27
    Author     : Andréia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container-fluid">
            <h1>Amortização – Constante</h1>
            </br>
            <h2>O que é Sistema de Amortização?</h2>
            <p>Primeiramente, é importante compreender que a amortização significa o processo de encerramento de uma dívida por meio de pagamentos periódicos realizados com base em planejamento. Cada prestação é correspondente ao total do reembolso do capital, aos juros do saldo devedor, ou de ambos os casos.</p>
            <h2>O que é Sistema de Amortização Constante (SAC)?</h2>
            <p>Quando a extinção de um empréstimo estiver associada a prestações com inclusão de juros, quitando partes iguais do valor total da dívida, estamos falando do Sistema de Amortização Constante (SAC). Para este caso, o reembolso equivale a valores de amortização iguais ao saldo devedor. Como os juros diminuem a cada prestação, no SAC o valor delas é decrescente. O valor da amortização é calculado da seguinte forma: divide-se o valor principal pelo número de parcelas, ou seja, os períodos de pagamento.<p/>
            <h2>Características do Sistema de Amortização Constante</h2>
            <p>As principais características de definem o SAC, são:</p>
            <ul>
                <li>Utilização de parcelas decrescentes;</li>
                <li>Amortização constante;</li>   
                <li>Uso de juros decrescentes;</li>
                <li>E o saldo devedor também é decrescente.</li>
            </ul>
       </div>


        
        
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        
    </body>
</html>
