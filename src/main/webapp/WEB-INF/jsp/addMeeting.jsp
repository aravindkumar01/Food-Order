<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <jsp:include page="menu.jsp" />
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Meeting</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard">Home</a></li>
              <li class="breadcrumb-item active">Add Meeting</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    
    <!-- Main content -->
      <div class="main-content">
       <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-12">
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">Meeting Details</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form role="form" onsubmit="myFunction()">
                  
                  <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" placeholder="Enter title of meeting" id="title" required="required">
                   </div>
                   
                   <div class="form-group">
                        <label>Title</label>
                        <input type="date" class="form-control" placeholder="Date of event" id="doe" required="required">
                   </div>
                      
                  <div class="form-group">
                    <label>Department</label>
                    <select class="form-control" id="department">
                         
                          
                        </select>
                  </div>
				
                  <div class="row">
                    <div class="col-sm-12 col-xs-12">
                      <!-- textarea -->
                      <div class="form-group">
                        <label>Notes</label>
                        <textarea class="form-control" rows="3" placeholder="Enter your notes" id="notes" required="required"></textarea>
                      </div>
                    </div>                    
                  </div>
               
				
				<div class="row">
					<div class="col-md-6">
						<button type="submit" class="btn btn-block btn-success btn" id="saveEmployee">Save</button>
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
      </div>
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
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>

<script>

$(document).ready(function(){
	
	$.ajax({
		type: 'GET',
		dataType: 'json',
		contentType: 'application/json',
		url: "/department/all",
		success: function(data, textStatus ){
		console.log(data);
		 $.each(data,function( i,j ) {
		
			 $('#department')
	         .append($("<option></option>")
	                    .attr("value",j.name)
	                    .text(j.name)); 
			
			 
	   	  });
		 
		
		},
		error: function(xhr, textStatus, errorThrown){
		//alert('request failed'+errorThrown);
		}
		
		});
	
	
});


function myFunction(){
	var meeting={"title":$("#title").val(),"dep_name":$("#department").val(),"notes":$("#notes").val(),
			         "date_of_event":$("#doe").val()};
	
	
	  $.ajax({
	      type: "POST",
	      contentType : 'application/json; charset=utf-8',
	      dataType : 'json',
	      url: "/meeting/add",
	      data: JSON.stringify(meeting),
	      success :function(result) {
	         if(result){
	        	 alert("Meeting added!")
	         }
	     },
         error: function(e){          	   
      	  console.log(e)
      	   
      	   	        }
	  });
}


</script>
</body>
</html>
