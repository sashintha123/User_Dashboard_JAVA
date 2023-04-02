<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Monsterlite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Monster admin lite design, Monster admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Monster Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>User Profile</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/monster-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/User/assets/images/favicon.png">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/User/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
     <!-- nav bar -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/User/nav/css/style.css">
	
	<!-- footer -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/User/footer/fonts/icomoon/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/User/footer/css/bootstrap.min.css">

    <!-- Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/User/footer/css/style.css">
	
	
</head>
 <body>
 
   <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
       <header class="topbar" data-navbarbg="skin6">
        
            <nav class="navbar top-navbar navbar-expand-md navbar-dark id="ftco-navbar">
            
               <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                      <b class="logo-icon">
                            
                            <img src="${pageContext.request.contextPath}/User/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />

                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->
                            <img src="${pageContext.request.contextPath}/User/assets/images/logo-text.png" alt="homepage" class="dark-logo" />

                        </span>
                      
                    </a>
                    
                    
                   
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav me-auto mt-md-0 ">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->

                        <li class="nav-item hidden-sm-down">
                            <form class="app-search ps-3">
                                <input type="text" class="form-control" placeholder="Search for..."> <a
                                    class="srh-btn"><i class="ti-search"></i></a>
                            </form>
                        </li>
                    </ul>

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
              <div class="collapse navbar-collapse" id="ftco-nav">
		          <ul class="navbar-nav ml-auto">
							<li class="nav-item"><a href="#" class="nav-link">Home</a></li>
                            <li class="nav-item"><a href="#" class="nav-link">Games</a></li>
		        	        <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
                            <li class="nav-item"><a href="#" class="nav-link">Contact Us</a></li>
		        	        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark" href="${pageContext.request.contextPath}/userprofile.jsp" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="${pageContext.request.contextPath}/User/assets/images/users/1.jpg" alt="user" class="profile-pic me-2">
                            </a>
                            <ul class="dropdown-menu show" aria-labelledby="navbarDropdown"></ul>
                        </li>
		          </ul>
		      </div>
                    
                </div>
               

            </nav>
            
        </header>
     
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="User/userdash.jsp" aria-expanded="false"><i class="me-3 far fa-clock fa-fw"
                                    aria-hidden="true"></i><span class="hide-menu">Dashboard</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="${pageContext.request.contextPath}/update" aria-expanded="false">
                                <i class="me-3 fa fa-user" aria-hidden="true"></i><span
                                    class="hide-menu">My user Profile</span></a>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="${pageContext.request.contextPath}/purchase" aria-expanded="false"><i class="me-3 fa fa-table"
                                    aria-hidden="true"></i><span class="hide-menu">My Purchase History</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="${pageContext.request.contextPath}/feedback" aria-expanded="false"><i class="me-3 fa fa-font"
                                    aria-hidden="true"></i><span class="hide-menu">My Feedbacks</span></a></li>
                        <!-- <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="map-google.html" aria-expanded="false"><i class="me-3 fa fa-globe"
                                    aria-hidden="true"></i><span class="hide-menu">Google Map</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="pages-blank.html" aria-expanded="false"><i class="me-3 fa fa-columns"
                                    aria-hidden="true"></i><span class="hide-menu">Blank</span></a></li> -->
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="${pageContext.request.contextPath}/UserLogoutServlet" aria-expanded="false"><i class="me-3 fa fa-info-circle"
                                    aria-hidden="true"></i><span class="hide-menu">Logout</span></a></li>
                        <!-- <li class="text-center p-20 upgrade-btn">
                            <a href="https://www.wrappixel.com/templates/monsteradmin/"
                                class="btn btn-danger text-white mt-4" target="_blank">Upgrade to
                                Pro</a>
                        </li> -->
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">My Profile</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Profile</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <!-- <div class="col-md-6 col-4 align-self-center">
                        <div class="text-end upgrade-btn">
                            <a href="https://www.wrappixel.com/templates/monsteradmin/"
                                class="btn btn-success d-none d-md-inline-block text-white" target="_blank">Upgrade to
                                Pro</a>
                        </div>
                    </div> -->
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body profile-card">
                                <center class="mt-4"> <img src="${pageContext.request.contextPath}/User/assets/images/users/5.jpg"
                                        class="rounded-circle" width="150" />
                                    <h4 class="card-title mt-2"><c:forEach var="user" items="${userAccountDetails}">${user.name}</c:forEach></h4>
                                    
                                    <div class="row justify-content-center">
                                        <div class="col-4">
                                            <a href="javascript:void(0)" class="link">
                                               
                                                
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="javascript:void(0)" class="link">
                                                <i class="icon-picture" aria-hidden="true"></i>
                                               
                                            </a>
                                         </div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2">
                                
                                   <c:forEach var="user" items="${userAccountDetails}">
                                   
                                   <c:set  var ="id" value ="${user.id}"></c:set>
                                   <c:set  var ="name" value ="${user.name}"></c:set>
                                   <c:set  var ="email" value ="${user.email}"></c:set>
                                   <c:set  var ="phone" value ="${user.phone}"></c:set>
                                   <c:set  var ="userName" value ="${user.userName}"></c:set>
                                   
                                   
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">User Id</label>
                                        <div class="col-md-12">
                                            <strong> ${user.id} </strong>
                                        </div>
                                    </div>
                                
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Full Name</label>
                                        <div class="col-md-12">
                                             <strong>${user.name} </strong>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <strong> ${user.email}</strong>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Phone No</label>
                                        <div class="col-md-12">
                                             <strong>${user.phone}</strong>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">Username</label>
                                        <div class="col-md-12">
                                            <strong> ${user.userName}</strong>
                                        </div>
                                    </div>
                                    
                                    
                                      </c:forEach>


                                    
                                    
                                </form>
                                
                                <c:url value ="User/updateprofile.jsp" var ="userupdate" >
                                   <c:param name = "id" value ="${id}"/>
                                   <c:param name = "name" value ="${name}"/>
                                   <c:param name = "email" value ="${email}"/>
                                   <c:param name = "phone" value ="${phone}"/>
                                   <c:param name = "userName" value ="${userName}"/>
                                   
                                                               
                                
                                </c:url>
                                
                                <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                            <a href ="${userupdate}"><button class="btn btn-success mx-auto mx-md-0 text-white">Update
                                                Profile</button></a>
                                        </div>
                                    </div>
                                
                                <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                            <a href ="${pageContext.request.contextPath}/delete"><button class="btn btn-success mx-auto mx-md-0 text-white">Delete
                                                Profile</button></a>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center footer-16371">
            
                      <div class="container">
                        <div class="row justify-content-center">
                           <div class="col-9 text-center">
                             <div class="footer-site-logo mb-4">
                               <a href="#">MoNsTeR</a>
                             </div>
                             <ul class="list-unstyled nav-links mb-5">
                                <li><a href="#">Games</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact Us</a></li>
                             </ul>

                            <div class="social mb-4">
                             <h3>Stay in touch</h3>
                                <ul class="list-unstyled">
                                   <li class="in"><a href="#"><span class="icon-instagram"></span></a></li>
                                   <li class="fb"><a href="#"><span class="icon-facebook"></span></a></li>
                                   <li class="tw"><a href="#"><span class="icon-twitter"></span></a></li>
                                   <li class="pin"><a href="#"><span class="icon-pinterest"></span></a></li>
                                   <li class="dr"><a href="#"><span class="icon-dribbble"></span></a></li>
                               </ul>
                           </div>

                           <div class="copyright">
                              <p class="mb-0"><small>© 2021 Monster by <a href="https://www.MoNsTeR.com/">MoNsTeR.com</a></small></p>
                           </div>

                       </div>
                    </div>
                 </div>
            
                
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="${pageContext.request.contextPath}/User/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="${pageContext.request.contextPath}/User/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="${pageContext.request.contextPath}/User/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="${pageContext.request.contextPath}/User/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="${pageContext.request.contextPath}/User/js/custom.js"></script>
    
     <!-- nav bar -->
    <script src="${pageContext.request.contextPath}/User/nav/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/nav/js/popper.js"></script>
    <script src="${pageContext.request.contextPath}/User/nav/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/nav/js/main.js"></script>
    
    <!-- footer -->
    <script src="${pageContext.request.contextPath}/User/footer/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/footer/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/footer/js/bootstrap.min.js"></script>
</body>
</html>