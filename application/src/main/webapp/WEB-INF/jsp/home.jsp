<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Log App</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
 <style type="text/css">
 .foo{
  padding-top: 250px;
  padding-left: 100px;
 }
 .hoo{
 margin-top: 20px;
 }
 </style>
</head>
<body>
<div class="container">
     <form class="row g-3 needs-validation" action="/checkin" method="post">
     <div class="col-md-6 foo">
    <label for="inputCity" class="form-label">ENTER YOUR NAME</label>
    <input type="text" name="name" class="form-control" id="inputCity" required>
    <div class="col-12">
    <button type="submit" class="btn btn-primary hoo">Submit</button>
  </div>
  </div>
     </form>
     </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
     </body>
</html>