<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
</head>
<body>



<%@page import= javaClassObject.StudentInfo %>
<%@page import= javaClassObject.StudentDao %>

<%
String id=request.getParameter("id");
StudentInfo s = StudentDao.getRecordById(Integer.parseInt(id));
%>

<form action='StudentEdit.jsp' method='post'>
ID<br>
<input type='text' name='id' class='form-control' value='<%s.getId();%>'><br>
Name:<br>
<input type='text' name='name' class='form-control' value='<%s.getName();%>'><br>
Passwor:d<br>
<input type='text' name='pasword' class='form-control' value='<%s.getPassword();%>'><br>
Email:<br>
<input type='text' name='email' class='form-control' value='<%s.getEmail();%>'><br>
Gender:<br>
<div class='radio'>
	<input type='radio' name='gender' value='male'>male<br>
</div><div class='radio'>
	<input type='radio' name='gender' value='female'>Female<br>
</div>
Country:<br>
			<select name='country'>
			  	<option value='Asia'>Asiua</option>
		  		<option value='Afriak'>Afrika</option>
				<option value='Eruopa'>Eroupa</option>
				<option value='NorthAmerica'>North America</option>
				<option value='SouthAmerica'>South America</option>
			</select>
<input type='submit' value='Edit' class='btn btn-peimary btn-lg pull-right' >
</form>



</body>
</html>