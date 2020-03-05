<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Tasty</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  
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
            <h1>Cart</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Cart Page</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

  <c:if test="${not empty lists}">
  <c:forEach items="${lists}" var="cart">
	        
      <!-- Default box -->
      <div class="card">
        <div class="card-body">
          
           <div class="row">
           		<div class="col-sm-3">
           		
           			<div class="" style="margin-top:5px;">
           					 <img style="height: 129px;" src="/tasty/${cart.path}" alt="">           			
           			</div>
           		
           		</div>
           		<div class="col-sm-1"></div>
           		<div class="col-sm-3">
           			<h5 style="margin-top: 39px;">${cart.title}</h5>
           		</div>
           		<div class="col-sm-1" style="margin-top: 39px;"></div>
           		<div class="col-sm-2">
           			<h3 style="margin-top: 31px;"><i class="fa fa-inr col-sm-2" aria-hidden="true"></i>${cart.cost}</h3>
           		</div>
           		<div class="col-sm-2">
           		
           			<div class="row-sm-1"></div>
					<div class="row-sm-2">
						<button type="button" class="btn btn-danger">ORDER&nbsp;&nbsp;&nbsp;</button>
					</div>
					<div class="row-sm-1"></div><br>
					<div class="row-sm-3">
						<button type="button" class="btn btn-danger" onClick="removeCart(${cart.id})">REMOVE</button>
					</div>
           		
           		</div>
           
           </div>
        </div>
        <!-- /.card-body -->
      </div>
      
     </c:forEach>
     </c:if>
     
     	<div class="row">
     		<div class="col-sm-10"></div>
     		<div class="col-sm-2">
     				<a href="/tasty/payment"  class="btn btn-danger btn-lg"> Payment</a>
     		</div>
     	
     	</div>
      
      	<br>
      	<br>
      	<br>
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

.card-content {
	background: #ffffff;
	border: 4px;
	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
}

.card-img {
	position: relative;
	overflow: hidden;
	border-radius: 0;
	z-index: 1;
}

.card-img img {
	width: 100%;
	height: auto;
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
    transform: translate(-50%,-50%);
}
.card-img span h4{
        font-size: 12px;
        margin:0;
        padding:10px 5px;
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
$(document).ready(function(){
	  $.ajax({
	      type: "GET",	     
	      url: "/tasty/login/menu",	    
	      success :function(result) {
	    	  console.log(result);
	    	  $(".nav-bar").append(result);
	    	
	     },
       error: function(e){          	   
    	  console.log(e)
    	   
    	   	        }
	  });
	
});

function removeCart(id){

	  $.ajax({
	      type: "DELETE",	     
	      url: "/tasty/cart/delete/"+id,	   
	     // data:{cart_id:id}, 
	      success :function(result) {
	    	 if(result){
	    		 	alertMsg("Item remove");
					window.reload();
			    }else{
			    	 errorToast("Unable to remove");
				    }
	     },
       error: function(e){    
    	   errorToast("Unable to remove");      	   
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
  
  
  