 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Register Form</title>

    <!-- Icons font CSS-->
    <link href="${pageContext.request.contextPath}/User/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/User/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath}/User/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/User/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    
    <!-- nav bar -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/User/nav/css/style.css">
	<link rel="canonical" href="https://www.wrappixel.com/templates/monster-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/User/assets/images/favicon.png">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/User/assets/plugins/chartist/dist/chartist.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/User/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <!-- footer -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/User/footer/fonts/icomoon/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/User/footer/css/bootstrap.min.css">

    <!-- Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/User/footer/css/style.css">
	

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/User/css/main.css" rel="stylesheet" media="all">
    
    
	

	
</head>
<body>

   <div class="limiter" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        
        <!-- nav bar -->
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
		        	        <li class="nav-item"><a href="userlogin.jsp" class="nav-link"><button type="button" class="btn btn-warning btn-sm">Login</button></a></li>
                            <li class="nav-item"><a href="userregister.jsp" class="nav-link"><button type="button" class="btn btn-warning btn-sm">Register</button></a></li>
		   
		          </ul>
		      </div>
                    
                </div>
               

            </nav>
            
        </header>
        
        <!-- close nav -->
        </div>



    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins " >
        


        <div class="wrapper wrapper--w780">
        <!-- get user details -->
        
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">User Registration Info</h2>
                    <form action="${pageContext.request.contextPath}/insert" method="POST">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="name" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="email" placeholder="Email" name="email" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Phone" name="phone" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Username" name="uid" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="password" placeholder="Password" name="psw" required>
                        </div>
                         <div class="input-group">
                            <input class="input--style-3" type="password" placeholder="Repate your password" name="Rpsw" required>
                        </div>
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit" value="newuser">Submit</button>
                        </div>
                        <br>
                        <div class="text-center pt-4 text-muted " ><p class="text-white bg-dark ">All ready you have an account? </p><a href="userlogin.jsp" class="text-warning" class="alert-link fw-bold"><h4>Login</h4> </a> </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
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
                              <p class="mb-0"><small>� 2021 Monster by <a href="https://www.MoNsTeR.com/">MoNsTeR.com</a></small></p>
                           </div>

                       </div>
                    </div>
                 </div>
            
                
            </footer>
    

    <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath}/User/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="${pageContext.request.contextPath}/User/vendor/select2/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/vendor/datepicker/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/vendor/datepicker/daterangepicker.js"></script>
    
    <!-- nav bar -->
    <script src="${pageContext.request.contextPath}/User/nav/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/nav/js/popper.js"></script>
    <script src="${pageContext.request.contextPath}/User/nav/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/nav/js/main.js"></script>
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
    
    <!-- footer -->
    <script src="${pageContext.request.contextPath}/User/footer/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/footer/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/User/footer/js/bootstrap.min.js"></script>

    <!-- Main JS-->
    <script src="${pageContext.request.contextPath}/User/js/global.js"></script>
    
    
</body>
</html>