<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
 
 
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <!-- searchtable -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript"> $(document).ready(function () {
	    $('#searchtable').DataTable();
  });</script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
 
 
  
   <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
  
<title>Insert title here</title>
</head>
<body>


 <%@page import="dao.UserSignupDao,bean.UserSignup,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      <%  
    List<UserSignup> list=UserSignupDao.getAllRecords();  
    request.setAttribute("list",list);  
    %>  
    
    <form action="" style="padding-right: 1%;padding-left: 1%">
 
<table id="searchtable" class="table table-striped" style="width:100%">
        <thead>
           <tr>
						<th>Id</th>
						<th>Email</th>
						<th>Password</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
        </thead>
       <c:forEach items="${list}" var="u">
						<tr>
							<td>${u.getId()}</td>
							<td>${u.getEmail()}</td>
							<td>${u.getPassword()}</td>

							<td><a href="editform.jsp?id=${u.getId()}">Edit<i
									class="material-icons">&#xE254;</i></a></td>
							<td><a href="admincutomersdelete.jsp?id=${u.getId()}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
</form>

</body>
</html>