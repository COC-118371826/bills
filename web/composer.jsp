<html>
  <head>
    <title>Product Information</title>

    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <style>
        body{
           background-image: url(https://cdn.pixabay.com/photo/2015/11/07/11/13/street-1030930_1280.jpg)!Important;
           
        }
       .dropbtn {
  background-color: #007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

#myInput {
  box-sizing: border-box;
  background-image: url('searchicon.png');
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 20px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
h4{
    color:white;
}
table, td, th {
  border: 1px solid black;
  color:white;
  background-color: black;
}

table {
  width:80%;
  height: 80%;
  border-collapse: collapse;
  background-color: black;
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
    <table>
      <tr>
        <th colspan="2" style="font-size:40px!Important;">Product Information</th>
      </tr>
      <tr>
          <td style="font-size:40px!Important;"><b>Name:</b> </td>
        <td style="font-size:40px!Important;">${requestScope.composer.firstName}</td>
      </tr>
      <tr>
        <td style="font-size:40px!Important;"><b>Price: </b></td>
        <td style="font-size:40px!Important;">$ ${requestScope.composer.lastName}</td>
      </tr>
      <tr>
        <td style="font-size:40px!Important;"><b>ID: </b> </td>
        <td style="font-size:40px!Important;">${requestScope.composer.id}</td>
      </tr>
      <tr>
        <td style="font-size:40px!Important;"><b>Category: </b> </td>
        <td style="font-size:40px!Important;">${requestScope.composer.category}</td>
      </tr>      
    </table>

    <p style="color:white !Important;">Go back to <a href="Home" class="link">All Product Homepage</a>.</p>
  </body>
</html>

