<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <div class="form" style ="position:relative; left:200px; top:0px;">
          <form>
            Name<input type="text" name="name" id="name" placeholder="name" required><br>
        <!--     Gender<select id="gender"><option value="male">Male</option><option value="female">Female</option><option value="others">Others</option></select>
          -->   Phone Number<input type="number" id="phone" name="phonenumber"placeholder="phonenumber"required><br>
            Address<input type="text" id="address" name="address" placeholder="address"required><br>           	
            E-Mail<input type="text" id="email" placeholder="email address" name="email" required><br>
            <button type="button" onClick="saveUser()">create</button><br>
            <p class="message">Already registered? <a href="/">Sign In</a></p>
          </form>
        </div>
</div>
</body>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="plugins/jquery/jquery.min.js"></script>

<script>

function saveUser(){

	 $("#user-account :input").prop("disabled", true);

	 var user= {"name":$("#name").val(),"gender":"","address":$("#address").val(),
					"email":$("#email").val(),"phone":$("#phone").val(),"city":"",
					"state":"","district":"","pincode":"","role":"user"
			 };
	
	 $.ajax({
	      type: "POST",
	      contentType : 'application/json; charset=utf-8',
	      dataType : 'json',
	      url: "/user/add",
	      data:  JSON.stringify(user),
	      
	      success :function(result) {
	    	 
	         if(result){
	        	// alert("Sucess!");
	        	swal("Registered sucessfully! Now you can login!")
					.then((value) => {

			        	 window.location.href = '/'; 
					});
	        
	         }else{
	        	 swal("Email already exit!")
	         }
	         
	     },
        error: function(e){    
        	swal("Unable to register ");
       	// resetForm();
     	  console.log(e)
     	   
     	   	        }
	  });
  
	 

	
}
</script>
</html>