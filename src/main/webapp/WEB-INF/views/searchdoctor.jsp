<%@page import="com.java.dto.Doctor"%>
<%@page import="java.util.List"%>
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
<title>Search Doctor</title>
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
      <a class="nav-item nav-link" href="/bookAppointment">Book Appointment<span class="sr-only">(current)</span></a>
      
    </div>
    <form class="nav-item nav-link active form-inline" action="/searchDoctor" method=post>
    <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
  </div>
</nav>
<% List<Doctor> list = (List<Doctor>)request.getAttribute("list");%>
	
	<table border="1">
		<tr>
			<td width="50px">Id</td>
			<td width="100px">Name</td>
			<td width="150px">Specialty</td>
			<td width="100px">City</td>
			<td>Make An Appointment</td>
		</tr>
		<% if (list == null || list.size() == 0) {%>
			<tr>
				<td colspan="5"><h3>No Doctor Matches Your Request</h3></td>
			<tr>
		<%} else {
			for (Doctor doctor : list) {%>
				<tr>
					<td><%=doctor.getId()%></td>
					<td><%=doctor.getDoctor_name()%></td>
					<td><%=doctor.getSpecialty()%></td>
					<td><%=doctor.getAddress().getCity()%></td>
					
				</tr>
		<%	}
    	  }
		%>
		</table>
<br>
<br>


</body>
</html>