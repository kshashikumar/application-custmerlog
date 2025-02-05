
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Log App</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<link href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" rel="stylesheet">
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
 
 <style type="text/css">
 .dropdown-menu {min-width: 30rem;} 
 .foo{
   margin-left: 10px;
 }
 .hoo{
   margin-right:10px;
 }
 .goo{
   margin-top: 20px;
 }
 </style>
 <script type="text/javascript" >
 $(document).ready( function () {
	    $('#myTable').DataTable();
	} );
</script>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Customer Log</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item" style="padding-left:10px;">
          <a class="nav-link " aria-current="page" href="/getalllogs">Get All Logs</a>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Get Log By Date
          </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><form class="d-flex" action="/getlogbydate">
        <input class="form-control me-2 foo" type="date" name="date"  aria-label="Search">
      <button type="submit" class="btn btn-primary hoo">Submit</button>
       </form></li>
          </ul>
        </ul>
    <ul class="navbar-nav ml-auto">
          <li class="nav-item" style="padding-left:10px;"><form action="/checkout" method="post">
          <button type="submit" class="btn btn-primary hoo">Checkout</button>
          </form>
        </li>
      </ul>

    </div>
  </div>
</nav>


<div class="container goo">
<table id="myTable" >
<thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">logType</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach  var="i" items="${ data }">
 <tr>
   <td>${i.id}</td>
   <td>${i.date}</td>
   <td>${i.time}</td>
   <td>${i.logType}</td>
 </tr>
 </c:forEach>
  </tbody>
</table>
<div id="pageNavPosition" class="pager-nav"></div>

</div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>