<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<style type="text/css">
	        .errormsg {
	            color: red;
	        }
	    </style>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
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
      <a class="nav-item nav-link" href="/registerDoctor">Register Doctor</a>
      <a class="nav-item nav-link active" href="/bookAppointment">Book Appointment<span class="sr-only">(current)</span></a>
      </div>
    <form class="nav-item nav-link active form-inline" action="/searchDoctor" method=post>
    <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
  </div>
</nav>
<br>
<h1 align="center">${message}</h1>
<br>
 <br>
<div class="container">
 <form action="/bookAppointment" method="post">
  <div class="form-group">
  <label for="patientName">Patient's Name</label>
  <input type="text" class="form-control" name="patient_name" id="inputName" placeholder="Your Name...">
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail">Patient's Email</label>
      <input type="email" class="form-control" name="patient_email" id="inputEmail" placeholder="Your Email...">
    </div>
    <div class="form-group col-md-6">
      <label for="inputContact">Patient's Contact</label>
      <input type="text" class="form-control" name="patient_contact" id="inputContact" placeholder="Your Contact No...">
    </div>
    </div>
     
  <div class="form-group">
  	<label for="problemDescription">Description</label>
    <textarea class="form-control" name="problem_description" id="problemDescription" rows="3"></textarea>
  </div>
  <div class="form-group">
  <label for="doctorName">Doctor's Name</label>
  <input type="text" class="form-control" name="doctor_name" id="doctorName" placeholder="Doctor's Name For Appointment...">
  </div>
  <div class="form-group">
  <label for="inputDateTime">Appointment Date and Time</label>
  <input type="text" class="form-control" name="appointment_datetime" id="inputDateTime" placeholder="Time prefered...">
  </div>
   <button type="submit" class="btn btn-primary">Book Appointment</button>

</form>
</div>
<br>
<br>

</body>
</html>