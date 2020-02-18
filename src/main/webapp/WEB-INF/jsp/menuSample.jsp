<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
     
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/dashboard" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Dashboard</span>
    </a>

    <!-- Sidebar -->
    <!-- <div class="sidebar">
      Sidebar user panel (optional)
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div> -->

      <!-- Sidebar Menu  <c:if test = "${userType != 'admin'}">  </c:if>-->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                                
               
      
        <c:if test="${userType=='admin'}">
		             <li class="nav-item">
		                <a href="/addEmployee" class="nav-link">
		                  <i class="far fa-id-card nav-icon"></i>
		                  <p style="color:white;">Add Employee</p>
		                </a>
		              </li>
		      
		        
		              <li class="nav-item">
		                <a href="/employeeDetails" class="nav-link">	
		                  <i class="far fa-address-book  nav-icon"></i>
		                  <p style="color:white;">Employee Details</p>
		                </a>
		              </li>   
		     
				   <li class="nav-item">
		                <a href="/addDepartment" class="nav-link">
		                  <i class="far fa-clone nav-icon"></i>
		                  <p style="color:white;">Add Department</p>
		                </a>
		              </li>
		      
		              <li class="nav-item">
		                <a href="/departmentDetails" class="nav-link">	
		                  <i class="far fa-window-restore  nav-icon"></i>
		                  <p style="color:white;">Department Details</p>
		                </a>
		              </li>   
				  </c:if>	
				
				 <c:if test="${userType=='admin' || userType=='manager' }">	
				    <li class="nav-item">
		                <a href="/addMeeting" class="nav-link">
		                  <i class="far fa-id-badge nav-icon"></i>
		                  <p style="color:white;">Add Meeting</p>
		                </a>
		              </li>
		              <li class="nav-item">
		                <a href="/meetingDetails" class="nav-link">
		                  <i class="far fa-envelope-open nav-icon"></i>
		                  <p style="color:white;">Meeting Details</p>
		                </a>
		              </li>
		              <li class="nav-item">
		                <a href="/meetingStatus" class="nav-link">
		                  <i class="far fa-book  nav-icon"></i>
		                  <p style="color:white;">Meeting Status</p>
		                </a>
		              </li>
           
            </c:if>
         
        <c:if test="${userType=='employee'}">   
              <li class="nav-item">
                <a href="/employeeMeetingStatus" class="nav-link">
                  <i class="far fa-object-ungroup  nav-icon"></i>
                  <p style="color:white;">Employee Meeting Status</p>
                </a>
              </li>
		 
                
		          <li class="nav-item">
		                <a href="/employeeTravel" class="nav-link">
		                  <i class="far fa-flask  nav-icon"></i>
		                  <p style="color:white;">Employee travel</p>
		                </a>
		              </li>
           </c:if>
          
          <c:if test="${userType=='admin'}">   
              <li class="nav-item">
                <a href="/travelDetails" class="nav-link">
                  <i class="far fa-check-circle  nav-icon"></i>
                  <p style="color:white;">Admin travel</p>
                </a>
              </li>
              
               <li class="nav-item">
                <a href="/media" class="nav-link">
                  <i class="far fa-file  nav-icon"></i>
                  <p style="color:white;">Add Media</p>
                </a>
              </li>
          </c:if>
           <c:if test="${userType=='employee'}">   
               <li class="nav-item">
                <a href="/mediaDetails" class="nav-link">
                  <i class="far fa-folder nav-icon"></i>
                  <p style="color:white;">Media Watching</p>
                </a>
              </li>
            </c:if>
           
           <li class="nav-item">
                <a href="/" class="nav-link">
                  <i class="fa fa-key nav-icon"></i>
                  <p style="color:white;">Logout</p>
                </a>
              </li>
              
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
   
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <!-- <div class="content-wrapper">
    Content Header (Page header)
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div>/.col
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div>/.col
        </div>/.row
      </div>/.container-fluid
    </div> -->
    <!-- /.content-header -->
