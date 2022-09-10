<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
<!-- 

This Page it is to Check if the Student its added or not  

-->



     
<%@page import= javaClassObject.StudentDao %>

<jsp:useBean id="s" class= "javaClassObject.StudentInfo"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int num = StudentDao.save(s);
if (num>0){
	response.sendRedirect("StudentAdded.jsp");
}else{
	response.sendRedirect("Studentfailed.jsp");
}


%>
</body>
</html>