<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head><!-- https://bootsnipp.com/snippets/WaeDX 
			https://bootsnipp.com/snippets/X2Db0
-->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Tasty Buds</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
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
        <div class="row">
          <!-- left column -->
          
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-12">
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
               <!--  <h3 class="card-title">Department Details</h3> -->
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                 <form role="form" action="/menu/add" enctype="multipart/form-data"  method="post"> 
                
				  <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control" placeholder="Enter name of menu" id="title" name="title" required="required">
                    
                  </div>
                  
                  <div class="form-group">
                    <label>Image</label>
                    <input type="file" class="form-control" name="file" placeholder="Choose the imgae" id="img"  required="required">
                  </div>
                  
                   <div class="form-group">
                    <label>Cost</label>
                    <input type="number" class="form-control" name="cost" placeholder="Enter the cost"  required="required">
                  </div>
                  
                  <div class="form-group">
                    <label>Category</label>
                    <select class="form-control" id="Category" name="category"  required="required">
                        <option value="breakfast">breakfast</option>
                        <option value="lunch">lunch</option>
                         <option value="dinner">dinner</option>
                    </select>
                  </div>
                     <div class="form-group">
                    <label>Status</label>
                    <select class="form-control" id="status" name="status"  required="required">
                        <option value="avalible">Avalible</option>
                        <option value="unavalible">Un Avalible</option>
                    </select>
                  </div>
                  <div class="row">
                    <div class="col-sm-12 col-xs-12">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" rows="3" placeholder="Enter your Description" id="description" name="description" required="required"></textarea>
                      </div>
                    </div>                    
                  </div>

				<div class="row">
					<div class="col-md-6">
						<button  type="submit" class="btn btn-block btn-success btn toastrDefaultSuccess" id="saveEmployee">Save</button>
					</div>
					<div class="col-md-6">
						<button type="button" class="btn btn-block btn-info btn">Cancel</button>
					</div>	
				</div>
				
                </form>
								
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- general form elements disabled -->
            
            <!-- /.card -->
          </div>
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
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


function alertMsg(msg){
	
		 toastr.success(msg);
}
  
 function errorToast(msg){
	 
	 toastr.error(msg);
 }
  
  function resetForm(){
	  
	  $("#title").val('');
	  $("#description").val('');
  }
  
</script>
</body>
</html>
  
  
  