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

  <!-- Font Awesome  https://bootsnipp.com/snippets/1dPDV-->
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
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Packages</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Package List</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

     <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center my-2">
              
                <h4 class="border-bottom border-dark p-2">Menu Packages&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               		 <a href="/addPackage" class="btn btn-primary" >New&nbsp;&nbsp;&nbsp;<i class="fa fa-plus-circle  nav-icon"></i></a>
		  
               </h4>
            </div>
         </div>
         <div class="portfolio-menu mt-2 mb-4">
           <!--  <ul>
               <li class="btn btn-outline-dark active" data-filter="*">All</li>
               <li class="btn btn-outline-dark" data-filter=".gts">Girls T-shirt</li>
               <li class="btn btn-outline-dark" data-filter=".lap">Laptops</li>
               <li class="btn btn-outline-dark text" data-filter=".selfie">selfie</li>
            </ul> -->
            <ul>
            <li class="btn btn-outline-dark active" data-filter="*">All</li>
              <c:if test="${not empty lists}">
            <c:forEach items="${lists}" var="menu">
            
            	 <li class="btn btn-outline-dark" data-filter=".${menu.title}">${menu.title}</li>
              <!--  <li class="btn btn-outline-dark active" data-filter="*">All</li>
               <li class="btn btn-outline-dark" data-filter=".gts">Girls T-shirt</li>
               <li class="btn btn-outline-dark" data-filter=".lap">Laptops</li>
               <li class="btn btn-outline-dark text" data-filter=".selfie">selfie</li> -->
             </c:forEach>
             </c:if>
            </ul>
         </div>
         <div class="portfolio-item row">
            <c:if test="${not empty lists}">
              <c:forEach items="${lists}" var="menu">
	              <div class="item col-md-3 ${menu.title}">
			        	<c:if test="${user eq 'admin'}">      
			              <p class="text-center"><i class="fa fa-trash" style="color:red;cursor: pointer;}" aria-hidden="true"></i></p>
			         	</c:if>
			          <div class="card-content">
	                      <div class="card-img">  
	                        <img src="/images/packages/${menu.title}.jpeg" alt="">
	                        <span><h4>${menu.status}</h4></span>
	                        
	                    </div>
	                   
	                    <div class="card-desc text-center">
		                       
		                        <p><b>${menu.title}<b></b></p>
		                      	 
		                       <div class="" style="background-color:#a11111;height:50px;">
		                           <div class="" style="margin-top:10px;">
		                           		<a href="/viewPackage?id=${menu.id}" style="color:white;"><b><br>View<br><br></b></a>
		                           		
		                           </div>
		                           
		                       		
		                       </div>
		                </div>
	                </div>
	            </div>
	            
	          </c:forEach>
            </c:if>
            
       </div>
       
       
      </div>
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
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.js"></script>


<style>

/* card details start  */
@import url('https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Roboto+Condensed:400,400i,700,700i');
section{
    padding: 100px 0;
}
.details-card {
	background: #ecf0f1;
}

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
.btn-card{
	background-color: #1ABC9C;
	color: #fff;
	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    padding: .84rem 2.14rem;
    font-size: .81rem;
    -webkit-transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    -o-transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    margin: 0;
    border: 0;
    -webkit-border-radius: .125rem;
    border-radius: .125rem;
    cursor: pointer;
    text-transform: uppercase;
    white-space: normal;
    word-wrap: break-word;
    color: #fff;
}
.btn-card:hover {
    background: orange;
}
a.btn-card {
    text-decoration: none;
    color: #fff;
}
/* End card section */
</style>
<script>

$('.portfolio-item').isotope({
 	itemSelector: '.item',
 	layoutMode: 'fitRows'
 });
 $('.portfolio-menu ul li').click(function(){
 	$('.portfolio-menu ul li').removeClass('active');
 	$(this).addClass('active');
 	
 	var selector = $(this).attr('data-filter');
 	$('.portfolio-item').isotope({
 		filter:selector
 	});
 	return  false;
 });
 $(document).ready(function() {
 var popup_btn = $('.popup-btn');
 popup_btn.magnificPopup({
 type : 'image',
 gallery : {
 	enabled : true
 }
 });
 });
 
$(document).ready(function(){
	  $.ajax({
	      type: "GET",	     
	      url: "/login/menu",	    
	      success :function(result) {
	    	  //console.log(result);
	    	  $(".nav-bar").append(result);
	    	
	     },
       error: function(e){          	   
    	  console.log(e)
    	   
    	   	        }
	  });
	
});

 
</script>
<style>
body{
	margin:0;
	padding:0;
}
/* .container{
	width:90%
	margin:10px auto;
} */
.portfolio-menu{
	text-align:center;
}
.portfolio-menu ul li{
	display:inline-block;
	margin:0;
	list-style:none;
	padding:10px 15px;
	cursor:pointer;
	-webkit-transition:all 05s ease;
	-moz-transition:all 05s ease;
	-ms-transition:all 05s ease;
	-o-transition:all 05s ease;
	transition:all .5s ease;
}

.portfolio-item{
	/*width:100%;*/
}
.portfolio-item .item{
	/*width:303px;*/
	float:left;
	margin-bottom:10px;
}


</style>
</body>
</html>
  
  
  