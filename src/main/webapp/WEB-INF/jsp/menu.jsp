  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
    
    .brand-image{   
    	
    max-height: 45px !important;
    }
    
    </style>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
       <!--  <a href="index3.html" class="nav-link">Home</a> -->
      </li>
     <!--  <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li> -->
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
     <!--  <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            Message Start
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            Message End
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            Message Start
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            Message End
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            Message Start
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            Message End
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      Notifications Dropdown Menu
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li> -->
      <li class="nav-item d-none d-sm-inline-block">
        
       <!--  <a href="/tasty/logout" class="nav-link btn-default"><i class="fa fa-key   nav-icon"></i>&nbsp;&nbsp;Logout</a> -->
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color:#d87d7d;">
    <!-- Brand Logo -->
    <a href="/tasty/packages" class="brand-link">
      <img src="/tasty/images/whitelogo.png"
           alt="AdminLTE Logo"
           class="brand-image img-circle" 
           style="opacity: .8">
      <span class="brand-text font-weight-light" style="color:white;font-style: oblique;" >&nbsp;&nbsp;</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar" >
      <!-- Sidebar user (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
         <!--  <i class="fa fa-user-circle" aria-hidden="true"></i> -->
        </div>
        <div class="info" >
          <a href="#" class="d-block" style="color:white;">${username}</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               
               <c:if test="${userType=='admin'}">	
				
        	        <li class="nav-item">
		                <a href="/tasty/dashboard" class="nav-link">
		                  <i class="far fa-window-restore nav-icon"></i>
		                  <p style="color:white;">Dashboard</p>
		                </a>
		              </li>
		               <li class="nav-item">
		                <a href="/tasty/home" class="nav-link">
		                  <i class="fa fa-home nav-icon"></i>
		                  <p style="color:white;">Home</p>
		                </a>
		              </li>
		           </c:if>
		               
		              
		               <li class="nav-item">
		                <a href="/tasty/menuDetails" class="nav-link">
		                  <i class="fa fa-book  nav-icon"></i>
		                  <p style="color:white;">Menu</p>
		                </a>
		              </li>
		               <li class="nav-item">
		                <a href="/tasty/packages" class="nav-link">
		                  <i class="fa fa-window-maximize   nav-icon"></i>
		                  <p style="color:white;">Packages</p>
		                </a>
		              </li>
		               <li class="nav-item">
		                <a href="/tasty/userAccount" class="nav-link">
		                  <i class="far fa-user-circle  nav-icon"></i>
		                  <p style="color:white;">User Account</p>
		                </a>
		              </li>
		              
		            <c:if test="${userType=='user'}">
				
			               <li class="nav-item">
			                <a href="/tasty/orderHistory" class="nav-link">
			                  <i class="fa fa-history nav-icon"></i>
			                  <p style="color:white;">Order History</p>
			                </a>
			              </li>
			              <li class="nav-item">
			                <a href="/tasty/cart" class="nav-link">
			                  <i class="fa fa-shopping-cart nav-icon"></i>
			                  <p style="color:white;">Cart</p>
			                </a>
			              </li>
		             </c:if>
		              <li class="nav-item">
		                <a href="/tasty/logout" class="nav-link">
		                  <i class="fa fa-sign-out  nav-icon"></i>
		                  <p style="color:white;">Logout</p>
		                </a>
		              </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
