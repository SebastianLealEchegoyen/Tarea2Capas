<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Sucursal</title>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}


button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

.button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  cursor: pointer;
}


.buttonAdd {
  background-color: white; 
  color: black; 
  border-radius: 8px;
  border: 2px solid #008CBA;
}

.buttonAdd:hover {
  background-color: #1A237E;
  color: white;
}


input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.button3 {
 background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  cursor: pointer;
}

button:hover {
  opacity: 0.7;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}


.container {
  padding: 16px;
}

span.clave {
  float: right;
  padding-top: 16px;
}

.modal {
  display: none;
  position: fixed; 
  z-index: 1; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
  padding-top: 60px;
}


.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; 
  border: 1px solid #888;
  width: 80%; 
}

.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}


@media screen and (max-width: 300px) {
  span.clave {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body style="background:linear-gradient(to right, darkblue ,cyan)">

<center>
<div class="jumbotron jumbotron-fluid" style="background:#FAFAFA90">
  <div class="container">
    <h1 class="display-4">Editar Sucursal</h1>
  </div>
</div>
<br>
</center>

<div style="width:7%; margin-left: auto; margin-right: auto">
<button onclick="document.getElementById('id01').style.display='block'" style="background:blue">Editar</button>
</div>
<div id="id01" class="modal">
  
  <form:form class="modal-content animate" action="${pageContext.request.contextPath}/SaveE" method="POST" modelAttribute="sucursalDTO">

		<div class="container">
		
		<form:input TYPE="Hidden" name="id" path="idSucursal"/>
		
		<label>Nombre de la sucursal: </label>
		<form:input type="text" name="nombreS" path="NombreS" /><br>
		<form:errors path="NombreS" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Hora de entrada: </label>
		<form:input type="Time" name="horaE" path="HoraE" /><br>
		<form:errors path="HoraE" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Hora de salida: </label>
		<form:input type="Time" name="horaS" path="HoraS" /><br>
		<form:errors path="HoraS" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Ubicacion: </label>
		<form:input type="text" name="ubicacion" path="Ubicacion" /><br>
		<form:errors path="Ubicacion" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Numero de mesas: </label>
		<form:input type="Number" name="nMesas" path="nMesas" /><br>
		<form:errors path="nMesas" cssStyle="color:#E81505;"></form:errors><br>
		
		<label>Nombre Gerente: </label>
		<form:input type="text" name="nomGerente" path="nomGerente" /><br>
		<form:errors path="nomGerente" cssStyle="color:#E81505;"></form:errors><br>
		
		<center>
		<input type="submit" class="button3 buttonAdd" value="Modificar Sucursal">
              </div>
              <div class="container" style="background-color:#f1f1f1;width:7%;  margin-left: auto; margin-right: auto">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
        </center>
              
        
    
	</form:form>
</div>

<script>
var modal = document.getElementById('id01');

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>

