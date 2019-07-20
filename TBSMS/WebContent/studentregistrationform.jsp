<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" /><link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" /><link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet" />

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
    <link href="css/sb-admin.css" rel="stylesheet" />
    
    <title>Home</title>
    
<script type="text/javascript">
	function checkPass() {
		//Store the password field objects into variables ...
		var pass1 = document.getElementById('pass1');
		var pass2 = document.getElementById('pass2');
		//Store the Confimation Message Object ...
		var message = document.getElementById('confirmMessage');
		//Set the colors we will be using ...
		var goodColor = "#66cc66";
		var badColor = "#ff6666";
		//Compare the values in the password field 
		//and the confirmation field
		if (pass1.value == pass2.value) {
			//The passwords match. 
			//Set the color to the good color and inform
			//the user that they have entered the correct password 
			pass2.style.backgroundColor = goodColor;
			message.style.color = goodColor;
			message.innerHTML = "Passwords Match"
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			pass2.style.backgroundColor = badColor;
			message.style.color = badColor;
			message.innerHTML = "Passwords Do Not Match!"
		}
	}
	function validatephone(phone) {
		var maintainplus = '';
		var numval = phone.value
		if (numval.charAt(0) == '+') {
			var maintainplus = '';
		}
		curphonevar = numval.replace(
				/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.\/<>?|`¬\]\[]/g, '');
		phone.value = maintainplus + curphonevar;
		var maintainplus = '';
		phone.focus;
	}
	// validates text only
	function Validate(txt) {
		txt.value = txt.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
	}
	// validate email
	function email_validate(email) {
		var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

		if (regMail.test(email) == false) {
			document.getElementById("status").innerHTML = "<span class='warning'>Email address is not valid yet.</span>";
		} else {
			document.getElementById("status").innerHTML = "<span class='valid'>Thanks, you have entered a valid Email address!</span>";
		}
	}
	// validate date of birth
	function dob_validate(dob) {
		var regDOB = /^(\d{1,2})[-\/](\d{1,2})[-\/](\d{4})$/;

		if (regDOB.test(dob) == false) {
			document.getElementById("statusDOB").innerHTML = "<span class='warning'>DOB is only used to verify your age.</span>";
		} else {
			document.getElementById("statusDOB").innerHTML = "<span class='valid'>Thanks, you have entered a valid DOB!</span>";
		}
	}
	// validate address
	function add_validate(address) {
		var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;

		if (regAdd.test(address) == false) {
			document.getElementById("statusAdd").innerHTML = "<span class='warning'>Address is not valid yet.</span>";
		} else {
			document.getElementById("statusAdd").innerHTML = "<span class='valid'>Thanks, Address looks valid!</span>";
		}
	}
</script>

<style type="text/css">
#fileForm {
	margin-left: 50%;
	width: 100%;
}

body {
	padding-top: 50px;
}

fieldset {
	border: thin solid #ccc;
	border-radius: 4px;
	padding: 20px;
	padding-left: 40px;
	background: #fbfbfb;
}

legend {
	color: #678;
}

.form-control {
	width: 95%;
}

label small {
	color: #678 !important;
}

span.req {
	color: maroon;
	font-size: 112%;
}
</style>



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
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>

				<!-- Icon Cards-->
			<jsp:include page="jspviews/IconCard.jsp" />		
				<!-- end of icon cards -->
				</div>
			<br />
        
	<div class="container">
				<div class="row">
					<div class="col-md-6">
						<form action="studentregistercontroller" method="post" id="fileForm" role="form">
							<fieldset>
								<legend class="text-center">
									Valid information is required to register. <span class="req"><small>
											required *</small></span>
								</legend>


								<div class="form-group">
									<label for="firstname"><span class="req">* </span>
										First name: </label> <input class="form-control" type="text"
										name="firstname" id="txt" onkeyup="Validate(this)" required />
									<div id="errFirst"></div>
								</div>

								<div class="form-group">
									<label for="lastname"><span class="req">* </span> Last
										name: </label> <input class="form-control" type="text" name="lastname"
										id="txt" onkeyup="Validate(this)"
										placeholder="hyphen or single quote OK" required />
									<div id="errLast"></div>
								</div>

								
								<div class="form-group">
									<label for="phonenumber"><span class="req">* </span>
										Phone Number: </label> <input required type="text" name="mobilenumber"
										id="phone" class="form-control phone" maxlength="11"
										onkeyup="validatephone(this);"
										placeholder="not used for marketing" />
								</div>

								<div class="form-group">
									<label for="mobilenumber" class="lables">Gender</label>
									<div class="form-check-inline">
										<input type="radio" class="form-check-input"
											class="form-control" name="gender" value="male">Male
										</label>
									</div>
									<div class="form-check-inline">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" class="form-control" name="gender"
											value="female">Female
										</label>
									</div>
									<br />

								<div class="form-group">
										<label for="email"><span class="req">* </span> Email
											Address: </label> <input class="form-control" required type="text"
											name="email" id="email"
											onchange="email_validate(this.value);" />
										<div class="status" id="status"></div>
									</div>




								<div class="form-group">
										<label for="sel1" class="lables">Select Course:</label> <select
											class="form-control" id="sel1" name="course" required>
											<option></option>
											<option value="delhi">B-Tech</option>
											<option value="bba">B.B.A</option>
											<option value="bca">B.C.A</option>
											<option value="engineering">Engineering</option>
										</select>
									</div>


									<div class="form-group">
										<label for="sel1" class="lables">Select State:</label> <select
											class="form-control" id="sel1" name="state" required>
											<option></option>
											<option value="up">UttarPradesh</option>
											<option value="lucknow">Lucknow</option>
											<option value="bihar">Bihar</option>
											<option value="jammukashmir">jammu kashmir</option>
											<option value="arunachal">Arunachal Pradesh</option>
										</select>
									</div>
				
								<div class="form-group">
									<label for="lastname"><span class="req">* </span> City
										: </label> <input class="form-control" type="text" name="lastname"
										id="txt" onkeyup="Validate(this)"
										placeholder="hyphen or single quote OK" required />
									<div id="errLast"></div>
								</div>

									

									<div class="form-group">
										<input class="btn btn-success" type="submit" name="submit_reg"
											value="Register">
									</div>
									<h5>You will receive an email to after complete the registration
										</h5>
									<h5>Be sure to check your spam folders.</h5>
							</fieldset>
						</form>
						<!-- ends register form -->

						<script type="text/javascript">
							document
									.getElementById("field_terms")
									.setCustomValidity(
											"Please indicate that you accept the Terms and Conditions");
						</script>
					</div>
					<!-- ends col-6 -->


				</div>
			</div>

			<!-- end of content area -->




</div>
</div>


        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © SGI 2019.</span>
            </div>
          </div>
        </footer>

      </div>
      </div>
        <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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