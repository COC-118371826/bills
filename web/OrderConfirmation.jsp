<%-- 
    Document   : OrderConfirmation
    Created on : 28 Nov 2020, 20:46:13
    Author     : cilli
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>body{
    background-image: url("https://cdn.pixabay.com/photo/2018/07/10/10/40/travel-3528324_960_720.jpg");
 
 
 min-height: 100%;
  min-width: 1024px;
	
  /* Set up proportionate scaling */
  width: 100%;
  height: 100%;
	
  /* Set up positioning */
 
  top: 0;
  left: 0;
        
    }
    .invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
.login_btn{
color: white !Important;
background-color:  black !Important;
width: 10%;
}.login_btn:hover{
color: black;
background-color: white;
}
</style>

</head>
<body>
 
             <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" 
         >
      <div class="container">
          <img src="images/LogoMakr-05a923.png" 
              width="190" height="60"/>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
     
        </button>
              
          <h3 style="color:black !Important; background-color:white !Important;">Thank you for shopping with us!</h3>
      </div>
    </nav>
<div class="container">
     
     <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    					<div class="col-xs-6">
    				<address>
                                     
    				<strong>Billed To:</strong><br>
    					${SKUSER.firstName}  
                                          ${SKUSER.lastName}
                                                   <br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Shipped To:</strong><br>
    					${SKUSER.firstName}
                                        ${SKUSER.lastName}<br>
    					1234 Main<br>
    					Apt. 4B<br>
    					Springfield, ST 54321
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					Visa ending **** 4242<br>
    					${SKUSER.email}
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					<%= new java.util.Date() %><br><br>
    				</address>
    			</div>
    		</div>
      
</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    	
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
    							<tr>
    								<td>Hospital</td>
    								<td class="text-center">$10.99</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$10.99</td>
    							</tr>
                                <tr>
        							<td>Turn Right</td>
    								<td class="text-center">$20.00</td>
    								<td class="text-center">3</td>
    								<td class="text-right">$60.00</td>
    							</tr>
                                <tr>
            						<td>Turn Left</td>
    								<td class="text-center">$600.00</td>
    								<td class="text-center">1</td>
    								<td class="text-right">$600.00</td>
    							</tr>
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$670.99</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">$15</td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right">$685.99</td>
    							</tr>
    						</tbody>
                                                
    					</table><form action="Logout.jsp" method="post">
    
  <input type="hidden" name="action" value="Logout">
  <input type="submit" id="Login" value="Logout" class="btn float-right login_btn">
</form>
                                    
    				</div>
    			</div>
    		</div>
    	</div>
        
    </div>

</div>

</body>
</html>