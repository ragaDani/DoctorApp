<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- Jquery core and Jquery UI libs -->
<script
  src="http://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js" integrity="sha512-ux1VHIyaPxawuad8d1wr1i9l4mTwukRq5B3s8G3nEmdENnKF5wKfOV6MEUH0k/rNT4mFr/yL+ozoDiwhUQekTg==" crossorigin="anonymous"></script>
  <script
  src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
  <!-- Bootstrap lib -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<style type="text/css">
	        .errormsg {
	            color: red;
	        }
	    </style>
<meta charset="ISO-8859-1">
<title>Register Doctor</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">DoctorApp</a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapsed" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link " href="/">Home </a>
      <a class="nav-item nav-link active" href="/registerDoctor">Register Doctor<span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="/bookAppointment">Book Appointment</a>
      
    </div>
    <form class="nav-item nav-link active form-inline" action="/searchDoctor" method=post>
    <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
  </div>
</nav>
 <br>
 <h1 align="center"> ${message}</h1>
 <br>
 <br>
<div class="container">
 <form action="/registerDoctor" method="post">
  
    <div class="form-group">
      <label for="inputName">Name</label>
      <input type="text" class="form-control" name="doctor_name" id="inputName" placeholder="Your Name...">
    </div>
    
  
  <div class="form-group">
    <label for="qualifications">Qualifications</label>
    <select multiple class="form-control" name="qualifications" id="qualifications">
      <option>MBBS</option>
      <option>MD</option>
      <option>DGO</option>
      <option>BDS</option>
      <option>MDS</option>
    </select>
  </div>
  <div class="form-group">
    <label for="specialty">Specialty</label>
    <select multiple class="form-control" name="specialty" id="specialty">
      <option>Pediatrician</option>
      <option>Optomologist</option>
      <option>Gynecologist</option>
      <option>Radiologist</option>
      <option>Obstetrician</option>
    </select>
  </div>
  
  <div class="form-group 6">
    <label for="inputYearsOfExperience">Years of Experience</label>
    <input type="number" class="form-control" name="address.hno" id="inputYearsOfExperience" placeholder="0">
  </div>
  <div class="form-group ">
  <a> Are you verified?</a>
    <div class="form-check ">
  <input class="form-check-input" type="checkbox" name="verified" id="inlineCheckbox1" value="true">
  <label class="form-check-label" for="inlineCheckbox1">Verified</label>
</div>
<div class="form-check ">
  <input class="form-check-input" type="checkbox" name="verified" id="inlineCheckbox2" value="false">
  <label class="form-check-label" for="inlineCheckbox2">Not Verified</label>
</div>
  </div>
  
  <div class="form-group">
  	
    <label for="doctorDescription">Description</label>
    <textarea class="form-control" name="description" id="doctorDescription" rows="3"></textarea>
  </div>
  <div class="form row">
 
  <div class=col-md-6>
  <label for="inputFromTime">Available From:</label>
  <input type="text" class="from-control" name="availableTime.fromTime" id="inputFromTime" placeholder="Available From..."> 
  </div>
  <div class=col-md-6>
  <label for="inputToTime">Available Until:</label>
  <input type="text" class="from-control" name="availableTime.toTime" id="inputtoTime" placeholder="Available Until..."> 
  </div>
  </div>
  <div class="form-row">
  <div class="form-group col-md-2">
    <label for="inputAddress">HouseNo</label>
    <input type="number" class="form-control" name="address.hno" id="inputAddress" placeholder="1234">
  </div>
  <div class="form-group col-md-10">
    <label for="inputAddress2">Street</label>
    <input type="text" class="form-control" name="address.street" id="inputAddress2" name="street" placeholder="Apartment, studio, or floor">
  </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" name="address.city" id="inputCity">
    </div>
    <div class="form-group col-md-3">
      <label for="inputState">State</label>
      <input type="text" class="form-control" id="inputState" name="address.state" placeholder="AZ">
    </div>
    <div class="form-group col-md-3">
      <label for="inputCountry">Country</label>
      <input type="text" class="form-control" id="inputCountry" name="address.country" placeholder="U.S.A">
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="number" name="address.zipcode" class="form-control" id="inputZip">
    </div>
  </div>
 
  <button type="submit" class="btn btn-primary">Register</button>
</form>
<br>
<br>
 </div>
 <script>
 $("input.inputFromTime").timepicker();
 $("input.inputToTime").timepicker();
 </script>
</body>
</html>