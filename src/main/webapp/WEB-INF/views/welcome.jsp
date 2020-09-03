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
    <h1 class="display-4">Welcome to DoctorApp!</h1>
    <p class="lead">Here you can register a doctor if you can provide telemedicine to our clients.
 If you're unwell and need professional help, please book an appointment with one of our doctors.</p>
  </div>
</div>
 
</body>
</html>