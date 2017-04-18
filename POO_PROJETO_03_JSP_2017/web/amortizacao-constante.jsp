<%-- 
    Document   : amortizacao-constante
    Created on : 14/04/2017, 01:43:49
    Author     : Andréia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
      
      
          <!DOCTYPE html>
          <html>            
          <head>
          <link rel="stylesheet" href="estilo/bootstrap.css">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link href="estilo/style.css" rel="stylesheet">
          <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
          <title>JSP Page</title>
          </head>
          <body>
            <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
            <%@include file="WEB-INF/jspf/menu.jspf" %>
            
                <br/>
            <%
            double capitalInicial = 0, juros = 0;
            int meses = 0;
           
            try{
              capitalInicial = Double.parseDouble(request.getParameter("capitalInicial"));
              juros = Double.parseDouble(request.getParameter("taxaJuros"));
              meses = Integer.parseInt(request.getParameter("tempo"));
            } catch(Exception ex){ }
            %>
            <main>
            <div class="container">
            <h1 class="section-title">Amortização Constante</h1>
            <form>
            <table class="table">
            <tr>
            <th colspan='3'>
            "Entrada de Dados"
            </th>
            </tr>
            <tr>
            <th>
            "Valor inicial"
            </th>
            <th>
            "Taxa de juros"
            </th>
            <th>
            "Tempo(Meses)"
            </th>
            </tr>
            <tr>
            <td>
            <input type='text' name='capitalInicial' value='" + capitalInicial + "' placeholder='R$' />
            </td>
            <td>
            <input type='text' name='taxaJuros' value='" + juros + "' placeholder='%'/>
            </td>
            <td>
            <input type='text' name='tempo' value='" + meses + "'/>
            </td>
            </tr>
            </table>
            <br/>
            <table class="table table-bordered">
            <tr>
            <th colspan='" + (meses+1) + "'>
            ("Saída de Dados")
            </th>
            <tr>
            <th>
          ("Montante Inicial"); 
           </th>
           <%for (int i = 1; i <=meses; i++){%>
                <th>
                ("Mês"  + <%=i%>);
                </th>
            <%}%>
            </tr>
            <tr>
         
            DecimalFormat df = new DecimalFormat("#.##");
            <td>
            ("R$ " + df.format(capitalInicial));
            </td>
            for (int i = 1; i<=meses; i++){
                ("<td>");
                ("R$ " + df.format(resultado));
                resultado *= (1+(juros/100));
                </td>
            }
            </tr>
            </table>
            <center><input class="btn btn-default" type='submit' value='Calcular'/></center>
            </form>
            </div>
           
            <script type="text/javascript" src="js/bootstrap.js"</script>
        
         <%@include file="WEB-INF/jspf/rodape.jspf" %>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
            <script src="bootstrap/js/bootstrap.js"></script>
            
             </main>
            </body>
            </html>
