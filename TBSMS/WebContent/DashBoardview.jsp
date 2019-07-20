<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>Home</title>
</head>
<body id="page-top">
	 
<jsp:include page="jspviews/navigation.jsp" />  
	
	<div id="wrapper">
		<!-- Sidebar -->
		<jsp:include page="jspviews/SideBar.jsp" />  
		<!-- sidbar end -->
		<div id="content-wrapper">

			<div class="container-fluid">

				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">User</a></li>
					
					<li class="breadcrumb-item"> <%=request.getAttribute("user") %></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>

				<!-- Icon Cards-->
			<jsp:include page="jspviews/IconCard.jsp" />		
				<!-- end of icon cards -->
				</div>
			<br />
	
	<!-- content area  -->
	<div>hello</div>
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