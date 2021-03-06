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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
        <title>Home</title>
        <style>
            .carousel-inner > .item > img,  .carousel-inner > .item > a > img {
                width: 70%;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/amortizacao1.jpg" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h1>Amortização Constante</h1>
                    </div>
                </div>

                <div class="item">
                    <img src="images/americana.jpg" alt="Chania" width="460" height="345">
                    <div class="carousel-caption">
                        <h1>Amortização-Americana</h1>
                    </div>
                </div>

                <div class="item">
                    <img src="images/tabela.jpg" alt="Flower" width="460" height="345">
                    <div class="carousel-caption">
                        <h1>Tabela Price</h1>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div class="container">
        <div class="container-fluid">
            </br></br>
            <div class="container-fluid">
                <h1>Entenda sobre a Amortização Constante, Amortização Americana e Tabela Price</h1>
                <img align="left" src="images/ideia.jpg" alt="Flower" width="460" height="345">

                <h2>Amortização Constante</h2>
                </br>
                <h3>O que é Sistema de Amortização?</h3>
                <p>Primeiramente, é importante compreender que a amortização significa o processo de encerramento de uma dívida por meio de pagamentos periódicos realizados com base em planejamento. Cada prestação é correspondente ao total do reembolso do capital, aos juros do saldo devedor, ou de ambos os casos.</p>
                <h3>O que é Sistema de Amortização Constante (SAC)?</h3>
                <p>Quando a extinção de um empréstimo estiver associada a prestações com inclusão de juros, quitando partes iguais do valor total da dívida, estamos falando do Sistema de Amortização Constante (SAC). Para este caso, o reembolso equivale a valores de amortização iguais ao saldo devedor. Como os juros diminuem a cada prestação, no SAC o valor delas é decrescente. O valor da amortização é calculado da seguinte forma: divide-se o valor principal pelo número de parcelas, ou seja, os períodos de pagamento.<p/>
                <h3>Características do Sistema de Amortização Constante</h3>
                <p>As principais características de definem o SAC, são:</p>
                <ul>
                    <li>Utilização de parcelas decrescentes;</li>
                    <li>Amortização constante;</li>   
                    <li>Uso de juros decrescentes;</li>
                    <li>E o saldo devedor também é decrescente.</li>
                </ul>
                </br></br>
                <h2>Amortização Americana</h2>
                <p>O Sistema Americano de Amortização é um tipo de quitação de empréstimo que favorece aqueles que desejam pagar o valor principal através de uma única parcela, porém os juros devem ser pagos periodicamente ou, dependendo do contrato firmado entre as partes, os juros são capitalizados e pagos junto ao valor principal. Observe as planilhas demonstrativas desse modelo de amortização.</p>
                <p>Exemplo 1 :</p>
                <p>Um empréstimo de R$ 50.000,00 será pago através do sistema americano no prazo de 10 meses, a juros mensais de 3% ao mês. 
                <p>Veja: </p>
                <p>De acordo com o modelo de amortização americana, a quitação do empréstimo ocorrerá no último mês, então nos meses anteriores a pessoa irá pagar somente o valor dos juros. </p>
                <p>Juros = 3% de 50.000 = 1.500 </p>
                </br></br>
                <h2>Tabela Price</h2>
                <p>Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. O método foi apresentado em 1771 por Richard Price em sua obra "Observações sobre Pagamentos Remissivos" (em inglês: Observations on Reversionary Payments).</p>
                <p>O método foi idealizado pelo seu autor para pensões e aposentadorias. No entanto, foi a partir da 2ª revolução industrial que sua metodologia de cálculo foi aproveitada para cálculos de amortização de empréstimo.</p>

                </br></br></br>

                <div id="equipe" class="container-fluid">
                    <h2>Equipe</h2> 
                    <div class="row placeholders col-md-offset-2">
                        <div class="col-xs-6 col-sm-3 col-md-6">
                            <img src="images/andreia.jpg" width="200" height="200" class="img-circle" alt="Generic placeholder thumbnail"/>
                            <h4>Andréia Coelho</h4>
                            <span class=""text-muted> Desenvolvedora do JSP Home e Amortização Constante</span>
                        </div>
                        <div class="col-xs-6 col-sm-3 col-md-6">
                            <img src="images/Daniel.jpeg" width="200" height="200" class="img-circle" alt="Generic placeholder thumbnail"/>
                            <h4>Daniel Alves</h4>
                            <span class=""text-muted> Desenvolvedor do JSP Amortização Americana e Tabela Price</span>
                        </div>
                    </div>
                </div>
            </div>
            </br></br></br></br></br></br></br></br></br></br>

            <%@include file="WEB-INF/jspf/rodape.jspf" %>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
            <script src="bootstrap/js/bootstrap.js"></script>
            </body>
            </html>