<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a>
			<li class="nav-item"><a class="nav-link"
				href="AdminPrvilizes.aspx"> <i class="fas fa-fw fa-chart-area"></i>
					<span>Admin</span></a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>Enquiry
						Management</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Enquiry Details:</h6>
					<a class="dropdown-item" href="AddEnquiry.jsp">Add Enquiry</a> <a
						class="dropdown-item" href="ViewEnquiry.jsp">View Enquiry</a> <a
						class="dropdown-item" href="editenquiry.jsp">Edit Enquiry</a>
					<div class="dropdown-divider"></div>
					<h6 class="dropdown-header">Other Enquiry:</h6>
					<a class="dropdown-item" href="#">Course Wise Enquiry</a> <a
						class="dropdown-item" href="#">Automoted Perday Enquiry Follow</a>
					<a class="dropdown-item" href="#">Automoted Email / SMS Follow</a>

				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>
						Student Management</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Student Details:</h6>
					<a class="dropdown-item" href="studentregistrationform.jsp">Add
						Student</a> <a class="dropdown-item" href="studentview.jsp">View Student</a> <a
						class="dropdown-item" href="#">Edit Student</a> <a
						class="dropdown-item" href="#">Attendance</a> <a
						class="dropdown-item" href="#">Student Fees</a>
					<div class="nav-item"></div>
				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>
						Exam Management</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Exam Details:</h6>
					<a class="dropdown-item" href="#">Online Result</a> <a
						class="dropdown-item" href="#">Class Test</a> <a
						class="dropdown-item" href="#">Quiz</a>
					<div class="nav-item"></div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>SMS</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">SMS Details:</h6>
					<a class="dropdown-item" href="#">Student</a> <a
						class="dropdown-item" href="#">Parent</a> <a class="dropdown-item"
						href="#">Staff</a>
					<div class="nav-item"></div>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>Manage
						Attendance</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Attendance Details:</h6>
					<a class="dropdown-item" href="#">Batch Wise </a> <a
						class="dropdown-item" href="#">Summry Of Attendance</a> <a
						class="dropdown-item" href="#">Attendance Reports</a>
					<div class="nav-item"></div>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>Staff</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Staff Details:</h6>
					<a class="dropdown-item" href="#">All Staff Records</a> <a
						class="dropdown-item" href="#">Update Staff Records</a> <a
						class="dropdown-item" href="#">Add Staff</a>
					<div class="nav-item"></div>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-fw fa-folder"></i> <span>Course</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Course Details:</h6>
					<a class="dropdown-item" href="#">Library</a> <a
						class="dropdown-item" href="#">Videos</a> <a class="dropdown-item"
						href="#">Pdf Etc..</a>
					<div class="nav-item"></div>
				</div></li>

			<li class="nav-item"><a class="nav-link" href="Employee.aspx">
					<i class="fas fa-fw fa-table"></i> <span>Employee</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="User.aspx"> <i
					class="fas fa-fw fa-table"></i> <span>User</span></a></li>

		</ul>

</body>
</html>