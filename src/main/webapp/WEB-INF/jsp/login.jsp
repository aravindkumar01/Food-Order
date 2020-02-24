<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="register/login page.css">
    <style>
    body{
      float: left;
  }
</style>
</head>

<body>
  <span>
    <img src="register/tasty buds white.png" class="logo"></span>
<div class="login-page">
  <div class="form" style ="position:relative; left:200px; top:124px;">
    <form>
      Username<input type="email" placeholder="username" id="email"/><br>
      Password<input type="password" placeholder="password" id="password"/><br>
      <button type="button" id="login-btn"><B>login</B></button>
      <p class="message">Not registered? <a href="/register">Create an account</a></p>
    </form>
  </div>
</div>
</body>



<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
	
	$("#login-btn").click(function(){

		
		
		  $.ajax({
		      type: "GET",
		      contentType : 'application/json; charset=utf-8',
		      dataType : 'json',
		      url: "/login",
		      data: {
		    	  username:$("#email").val(),
		    	  password:$("#password").val()
		      },
		      success :function(result) {
		            
		    	  console.log(result);
		    	  
		    	  sessionStorage.setItem("empId",result.username); 
		    	  sessionStorage.setItem("role",result.role); 
		    	  
		    	if(result!=null){
		    		swal("Login sucessfully!")
					.then((value) => {

						window.location.href = '/packages'; 
					});
		    		
		    		
		    		
		    	}else{
		    		swal("username or password worng");
		    	}
		     },
	       error: function(e){          	   
	    	  console.log(e);
	    	  swal("username or password worng");
	    	   
	    	  }
		  });

		});
	
		
	
});



</script>
</html>