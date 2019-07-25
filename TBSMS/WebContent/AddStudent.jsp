<%@page import="com.trainingbasket.tbsms.utils.ConnectionUtils"%>
<%@page import="com.trainingbasket.tbsms.services.CourseService"%>
<%@page import="com.trainingbasket.tbsms.beans.Course"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Set"%>
<%@page import="com.trainingbasket.tbsms.beans.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" />
<meta name="author" />
<title>SGI Admin - Dashboard</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css" />
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet" />
<link href="css/sb-admin.css" rel="stylesheet" />

<title>Insert title here</title>
</head>


<body >

<jsp:include page="jspviews/navigation.jsp" />  
	
	<div id="wrapper">
		<!-- Sidebar -->
		<jsp:include page="jspviews/SideBar.jsp" />  
		<!-- sidbar end -->
		<div id="content-wrapper">

			
			<br />
	
	<!-- content area  -->
	
	
	
	
	
	
<div class ="form" >



	<%
	
	
	
	
		List<String> errorMsg = (List<String>) request.getAttribute("errorMsg");
	//	Set<Student> successMsg = (Set<Student>) request.getAttribute("studentList");
		if (errorMsg != null) {
	%>
	<div style="background-color: red; border-style: solid;">
		<ol>
			<%
				for (String msg : errorMsg) {
			%>
			<li><%=msg%></li>
			<%
				}
		}
			%>
		</ol>
	</div>



	<form action="addStudent.do" class="form" method="get">
	
	<div class="form-group">
	<label> Name </label>	<input type="text" name="name"> 
	</div>
	
	<div class="form-group">
	<label>Age </label> <input type="text" name="age">
		
	</div>
	<div class="form-group">
	<label>Contact Number</label>
	<input type="text" name="contactNumber"> 
	</div>
	<div class="form-group">
	 <input type="submit">
	</div>
	</form>


	<%
	CourseService courseService = null;
	List<Course> courses= null;
	Set<Student> successMsg = new HashSet();
	try{
	 courseService = 	new CourseService(ConnectionUtils.getConnection());
	 courses= courseService.getAllCourse();
		
		Connection connection = (Connection)getServletContext().getAttribute("DbConnection");
		Statement statement = connection.createStatement();
		
		ResultSet resultSet= statement.executeQuery("Select * from studentn;");
	
		while(resultSet.next()){
			Student student = new Student();
			 
		 student.setId(resultSet.getInt(1));
		student.setName(resultSet.getString(2));
		student.setAge(	resultSet.getInt(3));
		student.setContactNumber(	resultSet.getString(4));
			successMsg.add(student);
		}
	}
	catch(Exception ee){
	
	}
	%>
	
	
	<div class="form">
		<div  class="form-group">
		<label> Select Course</label>
		 <select  class="form-control">
  			
  			<%
  			for (Course course :  courses){
  				%>
  				
  				<option> <%= course.getIdCourse() +" | "+ course.getName() +" | "+course.getDecription() +" | "+course.getDuration() %> </option>
  			<% 
  			}
  			%>
		</select>
		</div>
	</div>
	
	<div >
		<table  class="success table table-bordered">
			<thead>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Age</td>
					<td>Contact Number</td>
				</tr>
			</thead>
			<%
				for (Student s : successMsg) {
			%>

			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getAge()%></td>
				<td><%=s.getContactNumber()%></td>
			</tr>
			<%
				}
			%>
		</table>

	</div>
	

</div>
	
	
	
	
	
	
	
	
	
	
	
	<!-- end of content area -->
	
			
			
			<div>
				<footer class="sticky-footer">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright © SGI 2019</span>
						</div>
					</div>
				</footer>

			</div>
		</div>
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="Login.aspx">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		<script src="vendor/chart.js/Chart.min.js"></script>
		<script src="vendor/datatables/jquery.dataTables.js"></script>
		<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
		<script src="js/sb-admin.min.js"></script>
		<script src="js/demo/datatables-demo.js"></script>
		<script src="js/demo/chart-area-demo.js"></script>
</body>
</html>