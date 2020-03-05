<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Tasty Buds</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
	
  <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
  
</head>
<body class="hold-transition sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">
		<!-- Navbar -->

		<div class="nav-bar"></div>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Packages</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active" style="color: #a11111">${title}</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<div class="card">
					<div class="card-header">
						<!-- <h3 class="card-title">Title</h3>
 -->

					</div>
					<div class="card-body card-content">


						<div class="row">

							<div class="col-sm-6">
								<div class="card-img" style="margin-top: 20px;">
									<img src="/tasty/images/packages/${title}.jpeg" alt=""> <span><h4>${status}</h4></span>

								</div>
								<br>
								<div class="row">
									<div class="col-sm-8">
										<h3>
											<b>${title}<b></b>
										</h3>
									</div>
									<div class="col-xs-4">
										<p>
											<b><i class="fa fa-inr" aria-hidden="true"></i>120000<b></b>
										</p>
									</div>
								</div>
								<br>
								<button style="margin-left: 140px;"
									class="btn btn-danger btn-lg"
									onClick="addCart('${package_id}')">Order</button>
									

							</div>


							<div class="col-sm-12">

								<table id="customers">
									<tr>
										<th>Breakfast</th>
										<th>Lunch</th>
										<th>Dinner</th>
									</tr>
									<tr>
										<td>Ernst Handel</td>
										<td>Roland Mendel</td>
										<td>Austria</td>
									</tr>
									<tr>
										<td>Ernst Handel</td>
										<td>Roland Mendel</td>
										<td>Austria</td>
									</tr>


									<tr>
										<td>Ernst Handel</td>
										<td>Roland Mendel</td>
										<td>Austria</td>
									</tr>

								</table>



							</div>





						</div>



					</div>
					<!-- /.card-body -->

					<!-- /.card-footer-->
				</div>
				<!-- /.card -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

 <jsp:include page="footer.jsp" />

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	
<script src="plugins/toastr/toastr.min.js"></script>

	<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}

/* card details start  */
@import
	url('https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto+Condensed:400,400i,700,700i')
	;

section {
	padding: 100px 0;
}

.details-card {
	background: #ecf0f1;
}

.card-content {
	background: #ffffff;
	border: 4px;
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .16), 0 2px 10px 0
		rgba(0, 0, 0, .12);
}

.card-img {
	position: relative;
	overflow: hidden;
	border-radius: 0;
	z-index: 1;
}

.card-img img {
	width: 75%;
	height: 50%;
	display: block;
}

.card-img span {
	position: absolute;
	top: 15%;
	left: 12%;
	background: #1ABC9C;
	padding: 6px;
	color: #fff;
	font-size: 12px;
	border-radius: 4px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	-ms-border-radius: 4px;
	-o-border-radius: 4px;
	transform: translate(-50%, -50%);
}

.card-img span h4 {
	font-size: 12px;
	margin: 0;
	padding: 10px 5px;
	line-height: 0;
}

.card-desc {
	padding: 1.25rem;
}

.card-desc h3 {
	color: #000000;
	font-weight: 600;
	font-size: 1.5em;
	line-height: 1.3em;
	margin-top: 0;
	margin-bottom: 5px;
	padding: 0;
}

.card-desc p {
	color: #747373;
	font-size: 14px;
	font-weight: 400;
	font-size: 1em;
	line-height: 1.5;
	margin: 0px;
	margin-bottom: 20px;
	padding: 0;
	font-family: 'Raleway', sans-serif;
}
</style>
	<script>
		$(document).ready(function() {
			$.ajax({
				type : "GET",
				url : "/tasty/login/menu",
				success : function(result) {
					console.log(result);
					$(".nav-bar").append(result);

				},
				error : function(e) {
					console.log(e)

				}
			});

		});

		function addCart(id) {

			 $.ajax({
			      type: "POST",	     
			      url: "/tasty/cart/add"	,
			      //data:  JSON.stringify(cart),  
			      data:{
			    	  item_type:"package",
			    	  item_id:id,
			    	  quantity:0		    	  	  
				      } ,
			      success :function(result) {
			    	  if(result){
			    		  alertMsg("Cart added"); 
			    		  window.location.href = '/tasty/cart';
						
				    	 }
			    	
			     },
		      error: function(e){   
		    	  errorToast("Unable to add try again");       	   
		   	  console.log(e)
		   	   
		   	   	        }
			  });
		}




		function alertMsg(msg){
			
			 toastr.success(msg);
		}

		function errorToast(msg){

		toastr.error(msg);
		}
			
	</script>
</body>
</html>


