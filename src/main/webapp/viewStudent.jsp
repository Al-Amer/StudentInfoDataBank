<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student From</title>
<link href="css/style.css" rel="stylesheet" > 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">

</head>
<body>

<div>
	<div class='container'>
		<div class="p-2 bg-light border">
			<!-- Nav -->
		<div class='container'>
		<div class="p-2 bg-light border">
			<nav class="navbar navbar-expand-lg bg-light">
		      <div class="container-fluid">
		        <a class="navbar-brand" href="#">Navbar scroll</a>
		        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
		          <span class="navbar-toggler-icon"></span>
		        </button>
		        <div class="collapse navbar-collapse" id="navbarScroll">
		          <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
		            <li class="nav-item">
		              <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link" href="#">Link</a>
		            </li>
		            <li class="nav-item dropdown">
		              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		                Link
		              </a>
		              <ul class="dropdown-menu">
		                <li><a class="dropdown-item" href="#">Action</a></li>
		                <li><a class="dropdown-item" href="#">Another action</a></li>
		                <li><hr class="dropdown-divider"></li>
		                <li><a class="dropdown-item" href="#">Something else here</a></li>
		              </ul>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link disabled">Link</a>
		            </li>
		          </ul>
		          <form class="d-flex" role="search">
		            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
		            <button class="btn btn-outline-success" type="submit">Search</button>
		          </form>
		        </div>
		      </div>
		    </nav></div>
		   </div>
		<!-- End of Nav -->	

			<%@page import='javaClassObject.StudentInfo' %>
			<%@page import='javaClassObject.StudentDao' %>
			<%@page import='java.util.*' %>
			<%@page import='java.io.*' %>
			<%@page import='java.sql.*' %>
			<%@page import='javax.servlet.*' %>
			<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
			
			<%
			List<StudentInfo> list = StudentDao.getAllRecordes();
			request.setAttribute("list",list);
			%>
			
			<p>Student Information</p>
			<table>
				<thead>
					<tr>
						<th>name</th>
						<th>Password</th>
						<th>Email</th>
						<th>Gender</th>
						<th>Country</th>
						<th>ID</th>
						<th>Delete</th>
						<th>Edit</th>
					</tr>
				</thead>
				<!--  c = taglib uri  line number 62 and 
				list = StudentDao.java class line number 65+66 -->
				<c:forEch var='s' items='${list}'>
				<tbody>
					<tr>
						<td>${s.getName }</td>
						<td>${s.getPassword }</td>
						<td>${s.getEmail }</td>
						<td>${s.getGender }</td>
						<td>${s.getCountry }</td>
						<td>${s.getId }</td>
						<td><a href='delectStudent.jsp?id=${s.getId }'></a></td>
						<td><a href='editStudent.jsp?id=${s.getId }'></a></td>
					</tr>
				</tbody>
				</c:forEch>				
			</table>
			<a href='addStudent.jsp' role='button'>Add Student</a>


		</div>
	</div>
</div>
</body>
</html>