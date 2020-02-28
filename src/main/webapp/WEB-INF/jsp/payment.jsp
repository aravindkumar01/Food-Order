<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <h1>Checkout</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Payment</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Title</h3> 
        </div>
        <div class="card-body">
         	
         	
         	<div class="row">
         	  
         		<div class="col-sm-3 card">
         			<h5 style="color:#a11111; margin-top:19px;magin-left:6px;"><b>Payment Method</b></h5>
         			<br>
         			<p>Credit Card</p>
         			<p>Debit Card</p>
         			<p>Cash on Delivery</p>
         		
         	   </div>
         		
         		<div class="col-sm-4">         		
	         		  <div class="form-group">
	                    <label>Card Number</label>
	                    <input type="number" class="form-control" placeholder="Enter Your card number" id="card_number" required="required">                    
	                  </div>
	                   <div class="form-group">
	                    <label>Name of the Card</label>
	                    <input type="text" class="form-control" placeholder="Enter name othe card" id="card_name" required="required">                    
	                  </div>
         				
         			 <div class="form-group">
	                    <label>Validity Date</label>
	                    <input type="date" class="form-control" placeholder="Choose date" id="card_date" required="required">                    
	                  </div>
	                   <div class="form-group">
	                    <label>CCV</label>
	                    <input type="number" class="form-control" placeholder="Enter the CCV " id="card_ccv" required="required">                    
	                  </div>
         		
         		</div>
         		
         		
         		<div class="col-sm-5">
         		
         			<c:set var="total" value="${0}"/>
         				
         			<div class="card" style="width: 18rem;">
					  <div class="card-body">
							<div class="">
					 	   	  <h5 style="color:#a11111; margin-top:1px;magin-left:6px;"><b>Order Summary</b></h5>
					 	   	    <c:if test="${not empty lists}">
  									<c:forEach items="${lists}" var="cart">
											<div class="row">
												<p class="col-sm-6">${cart.title}</p>
												<p class="col-sm-1"></p>
												<p class="col-sm-5"><i class="fa fa-inr col-sm-2" aria-hidden="true"></i>&nbsp;${cart.cost}</p>
											</div>
									 <c:set var="total" value="${total + cart.cost}"/>
									 <c:set var="user_id" value="${cart.user_id}"/>
									</c:forEach>
								</c:if>
							
							</div>   
							
							<hr>
							<div class="row">
									<p class="col-sm-6">Total</p>
									<p class="col-sm-1"></p>
									<p class="col-sm-5"><i class="fa fa-inr col-sm-2" aria-hidden="true"></i>&nbsp;${total}</p>
							</div>    
					  </div>
					</div>
         		
        
              		<button type="button" class="btn btn-danger" onClick="pay(${user_id})" style="margin-left:120px;">&nbsp;&nbsp;&nbsp;PAY&nbsp;&nbsp;&nbsp;&nbsp;</button>
         			
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

<script>
$(document).ready(function(){
	  $.ajax({
	      type: "GET",	     
	      url: "/login/menu",	    
	      success :function(result) {
	    	  console.log(result);
	    	  $(".nav-bar").append(result);
	    	
	     },
       error: function(e){          	   
    	  console.log(e)
    	   
    	   	        }
	  });
	
});


function pay(user_id){

	var card_number=$("#card_number").val();
	var card_name=$("#card_name").val();
	var card_date=$("#card_date").val();
	var card_ccv=$("#card_ccv").val();
	

	if(card_number=="" || card_name=="" || card_date=="" || card_ccv==""){
		errorToast("Fill all details");
		return false;
	}	

	  $.ajax({
	      type: "GET",	     
	      url: "/cart/payment",	
	      success :function(result) {
	    		if(result){
	    			alertMsg("Payment sucessfully done!")
		    		}
	    	
	     },
       error: function(e){   
    	   errorToast("Unable to payment");       	   
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
  
  
  