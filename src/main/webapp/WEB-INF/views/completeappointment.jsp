<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
<meta charset="ISO-8859-1">
<title>Welcome to Doctor Application</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">DoctorApp</a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapsed" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="/registerDoctor">Register Doctor</a>
      <a class="nav-item nav-link" href="/bookAppointment">Book Appointment</a>
  </div>
  <form class="nav-item nav-link active form-inline" action="/searchDoctor" method=post>
    <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
  </div>
</nav>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Appointment completed!</h1>
    <p class="lead">Hi there ${doctor.doctor_name} your registration has been successfully completed!! Hope to see you help our clients at ${doctor.address.city}!!</p>
  	<br>
  	<br>
  	<p class="lead"> If appointment was successfully please rate your doctor) </p>
  	
  	<form class="form-group" action="/bookAppointmentRating" method="post">
  	
  	<div class="form-group">
  <label for="doctorName">Doctor's Name</label>
  <input type="text" class="form-control" name="doctor_name" id="doctorName" placeholder="Doctor's Name...">
  </div>
  	<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="rating" id="inlineRadio1" value="1">
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="rating" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="rating" id="inlineRadio3" value="3">
  <label class="form-check-label" for="inlineRadio3">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="rating" id="inlineRadio4" value="4">
  <label class="form-check-label" for="inlineRadio4">4</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="rating" id="inlineRadio5" value="5">
  <label class="form-check-label" for="inlineRadio5">5</label>
</div>
<button type="submit" class="btn btn-primary">Submit Rating</button>

</form>
  </div>
  
</div>
 
</body>
</html>