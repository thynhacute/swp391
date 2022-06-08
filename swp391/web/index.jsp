
<%@page import="java.awt.Image"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <title>Mega Able bootstrap admin template by codedthemes </title>
        <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 10]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
          <![endif]-->
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
        <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
        <meta name="author" content="codedthemes" />
        <!-- Favicon icon -->
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
        <!-- Google font-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
        <!-- waves.css -->
        <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
        <!-- Required Fremwork -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
        <!-- waves.css -->
        <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
        <!-- themify icon -->
        <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css">
        <!-- scrollbar.css -->
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
        <!-- am chart export.css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>

    <body>
        <!-- Pre-loader start -->
        <div class="theme-loader">
            <div class="loader-track">
                <div class="preloader-wrapper">
                    <div class="spinner-layer spinner-blue">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div>
                        <div class="gap-patch">
                            <div class="circle"></div>
                        </div>
                        <div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>
                    <div class="spinner-layer spinner-red">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div>
                        <div class="gap-patch">
                            <div class="circle"></div>
                        </div>
                        <div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>

                    <div class="spinner-layer spinner-yellow">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div>
                        <div class="gap-patch">
                            <div class="circle"></div>
                        </div>
                        <div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>

                    <div class="spinner-layer spinner-green">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div>
                        <div class="gap-patch">
                            <div class="circle"></div>
                        </div>
                        <div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pre-loader end -->
        <div id="pcoded" class="pcoded">
            <div class="pcoded-overlay-box"></div>
            <div class="pcoded-container navbar-wrapper">
                <nav class="navbar header-navbar pcoded-header">
                    <div class="navbar-wrapper">
                        <div class="navbar-logo">
                            <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                                <i class="ti-menu"></i>
                            </a>
                            <div class="mobile-search waves-effect waves-light">
                                <div class="header-search">
                                    <div class="main-search morphsearch-search">
                                        <div class="input-group">
                                            <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                            <input type="text" class="form-control" placeholder="Enter Keyword">
                                            <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a href="HomeAdminController ">
                                <img class="img-fluid" src="assets/images/logo-background/logo-fpt-certificate.png" style="width: 60%;" alt="Theme-Logo" />
                            </a>
                            <a class="mobile-options waves-effect waves-light">
                                <i class="ti-more"></i>
                            </a>
                        </div>

                        <div class="navbar-container container-fluid">

                            <!--///////////////////////-->

                            <ul class="nav-left">
                                <li class="header-search">
                                    <div class="main-search morphsearch-search">
                                        <form action="SearchAdminController" name="search">
                                            <div class="input-group">
                                                <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                                <input type="text" class="form-control" name="search">                                                
                                                <span class="input-group-addon search-btn"><i class="ti-search"  ></i></span>
                                            </div>

                                        </form>

                                    </div>
                                </li>

                            </ul>

                            <ul class="nav-right">
                                <%
                                    UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                                    if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                                        response.sendRedirect("login.jsp");
                                        return;
                                    }

                                %>

                                <li class="user-profile header-notification">
                                    <a href="#!" class="waves-effect waves-light">
                                        <img src="<%=loginUser.getImage() %>" class="img-radius" />
<!--                                        <img src="" class="img-radius"  >-->
                                        <span><%=loginUser.getFullName()%></span>
                                        <i class="ti-angle-down"></i>
                                    </a>
                                    <ul class="show-notification profile-notification">
                                        <li class="waves-effect waves-light">
                                            <a href="login.jsp">
                                                <i class="ti-layout-sidebar-left"></i> Logout
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="pcoded-main-container">
                    <div class="pcoded-wrapper">
                        <nav class="pcoded-navbar">
                            <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                            <div class="pcoded-inner-navbar main-menu">
                                <div class="">
                                    <div class="main-menu-header">
                                        <img class="img-80 img-radius" src="<%=loginUser.getImage()%>" >
                                        <div class="user-details">
                                            <span id="more-details"><%= loginUser.getFullName() %> </span>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <div class="pcoded-navigation-label" data-i18n="nav.category.navigation">Managerment</div>
                                <ul class="pcoded-item pcoded-left-item">
                                    <li class="active">
                                        <a href="HomeAdminController" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">Home</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>

                                </ul>
                                <div class="pcoded-navigation-label" data-i18n="nav.category.forms">Student &amp; Recuiter</div>
                                <ul class="pcoded-item pcoded-left-item">
                                    <li>
                                        <a href="form-elements-component.jsp" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">List student done OJT
                                            </span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="bs-basic-table.jsp" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">List post job </span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>

                                </ul>

                                <div class="pcoded-navigation-label" data-i18n="nav.category.forms">Feedback &amp; News</div>
                                <ul class="pcoded-item pcoded-left-item">
                                    <li>
                                        <a href="chart.jsp" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">Feedback</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="map-google.jsp" class="waves-effect waves-dark">
                                            <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                            <span class="pcoded-mtext" data-i18n="nav.form-components.main">News</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>


                                </ul>
                            </div>
                        </nav>
                        <div class="pcoded-content">
                            <!-- Page-header start -->

                            <!-- Page-header end -->
                            <div class="pcoded-inner-content">
                                <!-- Main-body start -->
                                <div class="main-body">
                                    <div class="page-wrapper">
                                        <!-- Page body start -->
                                        <div class="page-body">
                                            <div class="page-body">


                                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" id="student-tab" data-toggle="tab"
                                                           href="#student" role="tab" aria-controls="student"
                                                           aria-selected="true">
                                                            List Student FPT</a>
                                                    </li>

                                                    <li class="nav-item">
                                                        <a class="nav-link" id="recuiter-tab" data-toggle="tab" href="#recuiter"
                                                           role="tab" aria-controls="recuiter" aria-selected="false">
                                                            List Recuiter</a>
                                                    </li>                                                  

                                                </ul>
                                                <%
                                                    String search = request.getParameter("search");
                                                    List<UserDTO> ListUsers = (List<UserDTO>) request.getAttribute("LIST_STUDENT_BY_NAME");

                                                    if (search == null) {
                                                        search = "";
                                                    }
                                                %>
                                                <div class="tab-content" id="myTabContent">

                                                    <div class="tab-pane fade show active" id="student" role="tabpanel"
                                                         aria-labelledby="student-tab">
                                                        <nav class="navbar navbar-light bg-light justify-content-between">
                                                            <a class="navbar-brand">FPT University</a>
                                                            <form class="form-inline" action="SearchAdminController">
                                                                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="search" value="<%= search%>" >
                                                                <button class="btn btn-outline-success my-2 my-sm-0"  type="submit" >Search</button>
                                                            </form>
                                                        </nav>

                                                        <table class="table table-stripe">
                                                            <tr>
                                                                <td>ID Student</td>
                                                                <td>Full Name</td>
                                                                <td>Image</td>
                                                                <td>Email</td>                                                             
                                                                <td>major</td>        
                                                                <td>current Term</td>                                                                                                                                                                 
                                                                <td>&nbsp;</td>                                                        
                                                            </tr>
                                                            <% List<UserDTO> listUserByStudent = (List<UserDTO>) request.getAttribute("GET_LIST_ALL_USER_BY_STUDENT");
                                                                if (listUserByStudent != null) {
                                                                    if (listUserByStudent.size() > 0) {
                                                                        for (UserDTO listUser : listUserByStudent) {
                                                            %>
                                                            <tr>
                                                                <td><%= listUser.getUserID()%></td>                                                        
                                                                <td><%= listUser.getFullName()%></td>
                                                                <td><img src="<%= listUser.getImage()%>" style="width: 60px"></td>  
                                                                <td><%= listUser.getEmail()%></td>                                                        
                                                                <td><%= listUser.getMajoir()%></td>                                                                                                             
                                                                <td><%= listUser.getCurrentTermNo()%></td>                                                        
                                                                <td>
                                                                    <a href="UpdateAdminController"> <i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                                                                    <a href="DeleteAdminController?userID=<%= listUser.getUserID()%>" style="color: red;"> <i class="fa fa-trash" aria-hidden="true"></i> Delete</a>
                                                                </td>                                                        
                                                            </tr>

                                                            <%                                                                        }
                                                                    }
                                                                }
                                                            %>
                                                        </table>

                                                    </div>
                                                    <%
                                                        String search1 = request.getParameter("search1");
                                                        if (search1 == null) {
                                                            search1 = "";
                                                        }
                                                    %>

                                                    <div class="tab-pane fade" id="recuiter" role="tabpanel"
                                                         aria-labelledby="recuiter-tab">
                                                        <nav class="navbar navbar-light bg-light justify-content-between">
                                                            <a class="navbar-brand">FPT University</a>
                                                            <form class="form-inline" action="SearchAdminController1">
                                                                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="search1" value="<%= search1%>" >
                                                                <button class="btn btn-outline-success my-2 my-sm-0"  type="submit" >Search</button>
                                                            </form>
                                                        </nav>
                                                        <table class="table table-stripe">
                                                            <tr>
                                                                <td>ID Recuiter </td>
                                                                <td>Name Recuiter</td> 
                                                                <td>Image</td>                                                                                                                       
                                                                <td>Email</td>                                                        
                                                                <td>Website</td>                                                        
                                                                <td>&nbsp;</td>                                                        
                                                            </tr>
                                                            <%
                                                                List<UserDTO> listUserByRecuiter = (List<UserDTO>) request.getAttribute("GET_LIST_ALL_USER_BY_RECUITER");
                                                                if (listUserByRecuiter != null) {
                                                                    if (listUserByRecuiter.size() > 0) {
                                                                        for (UserDTO lisUsers : listUserByRecuiter) {
                                                            %>
                                                            <tr>
                                                                <td><%=lisUsers.getUserID()%></td>                                                      
                                                                <td><%=lisUsers.getFullName()%></td>                                                      
                                                                <td><img src="<%=lisUsers.getImage()%>" style="width: 60px" /> </td>                                                      
                                                                <td><%=lisUsers.getEmail()%></td>                                                      
                                                                <td><%=lisUsers.getWebsite()%></td>                                                      

                                                                <td>
                                                                    <a href=""> <i class="fa fa-edit" aria-hidden="true"></i> Edit</a>
                                                                    <a href="DeleteAdminController?userID=<%=lisUsers.getUserID()%>" style="color: red;"> <i class="fa fa-trash" aria-hidden="true"></i> Delete</a>
                                                                </td>                                                        
                                                            </tr>
                                                            <%
                                                                        }
                                                                    }
                                                                }
                                                            %>

                                                        </table>

                                                    </div>                    
                                                </div>
                                            </div>

                                        </div>
                                        <!-- Page body end -->
                                    </div>
                                </div>
                                <!-- Main-body end -->
                                <div id="styleSelector">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="assets/js/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js "></script>
        <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js "></script>
        <script type="text/javascript" src="assets/pages/widget/excanvas.js "></script>
        <!-- waves js -->
        <script src="assets/pages/waves/js/waves.min.js"></script>
        <!-- jquery slimscroll js -->
        <script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
        <!-- modernizr js -->
        <script type="text/javascript" src="assets/js/modernizr/modernizr.js "></script>
        <!-- slimscroll js -->
        <script type="text/javascript" src="assets/js/SmoothScroll.js"></script>
        <script src="assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
        <!-- Chart js -->
        <script type="text/javascript" src="assets/js/chart.js/Chart.js"></script>
        <!-- amchart js -->
        <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
        <script src="assets/pages/widget/amchart/gauge.js"></script>
        <script src="assets/pages/widget/amchart/serial.js"></script>
        <script src="assets/pages/widget/amchart/light.js"></script>
        <script src="assets/pages/widget/amchart/pie.min.js"></script>
        <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
        <!-- menu js -->
        <script src="assets/js/pcoded.min.js"></script>
        <script src="assets/js/vertical-layout.min.js "></script>
        <!-- custom js -->
        <script type="text/javascript" src="assets/pages/dashboard/custom-dashboard.js"></script>
        <script type="text/javascript" src="assets/js/script.js "></script>
        <script>
            $('#myTab a').on('click', function (e) {
                e.preventDefault()
                $(this).tab('show')
            })
        </script>
    </body>

</html>
