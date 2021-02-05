<html>
  <head>
    <title>Product Information</title>

    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <style>
        body{
           background-image: url(https://media.giphy.com/media/WZrOaNjFPKT5e/giphy.gif)!Important;
           
        }
 



.show {display: block;}
h4{
    color:white;
}
table, td, th {
  border: 1px solid black;
  color:white;
 
}

table {
  width:80%;
  height: 80%;
  border-collapse: collapse;
 }
 .hr3 {
  color: black;

}
.hr4 {
  color: black;
 background: -webkit-linear-gradient(right,white,black);
 text-align: center;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
    </style>  
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>The Sign Shop</title>
   <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
  
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <img src="images/LogoMakr-05a923.png"
              width="190"height="60"/>
      <a class="navbar-brand" href="#"></a>
     
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
       
                
            </li>
          </ul>
        </div>
    </div>
  </nav>
<br><br>
    <table class="center">
      <tr class="hr4">
          <th colspan="2" style="font-size:40px!Important;"> Product <span class="hr3">Information</span></th>
      </tr>
      <tr>
          <td style="font-size:40px!Important;background-color:white !Important;color:black !Important"><b>Name:</b> </td>
        <td style="font-size:40px!Important;background-color:black !Important">${requestScope.composer.firstName}</td>
      </tr>
      <tr>
        <td style="font-size:40px!Important;background-color:black !Important""><b>Price: </b></td>
        <td style="font-size:40px!Important;background-color:white !Important;color:black !Important">$ ${requestScope.composer.lastName}</td>
      </tr>
      <tr>
        <td style="font-size:40px!Important;background-color:white !Important;color:black !Important"><b>ID: </b> </td>
        <td style="font-size:40px!Important;background-color:black !Important">${requestScope.composer.id}</td>
      </tr>
      <tr>
        <td style="font-size:40px!Important;background-color:black !Important"><b>Category: </b> </td>
        <td style="font-size:40px!Important;background-color:white !Important;color:black !Important">${requestScope.composer.category}</td>
      </tr>      
    </table>

    <p style="color:white !Important; background-color: black !Important;">Go back to <a href="Home" style="color:white !Important;" class="link">All Product Homepage</a>.</p>
  </body>
</html>

