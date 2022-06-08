<%@page import="major.MajorDTO"%>
<%@page import="sample.user.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="job.JobDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>

        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>OJT</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
        <link rel="stylesheet" href="home/styleOfHome.css">
    </head>
    <body>
                    <%
                        String search = (String) request.getParameter("search");
                        String listMajor1 = (String) request.getParameter("listMajor1");
                        if (listMajor1 == null) {
                            listMajor1 = "";
                        }
                        if (search == null) {
                            search = "";
                        }
                    %>
                    <div class="banner">
                        <div class="container-all">
                            <nav>
                                <div class="menu">
                                    <ul>
                                        <li><a href="home.jsp">Trang chủ</a></li>
                                        <li>
                                            <a href="introduce.jsp">Giới thiệu</a>
                                        </li>
                                        <li>
                                            <a href="#">Tin hoạt động</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Quan hệ doanh nghiệp</a></li>
                                                <li><a href="">Hoạt động hướng nghiệp</a></li>
                                                <li><a href="">Tham quan doanh nghiệp</a></li>
                                                <li><a href="">Sinh viên khởi nghiệp</a></li>
                                                <li><a href="">Hoạt động cộng đồng</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="#">Học kỳ tại doanh nghiệp (OJT)</a>
                                            <ul class="sub-menu">
                                                <li><a href="">Giới thiệu chương trình OJT</a></li>
                                                <li><a href="">Quy định OJT</a></li>
                                                <li><a href="">Thông báo OJT</a></li>
                                                <li><a href="">Đăng ký OJT</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Hồ sơ ứng viên</a></li>
                                        <li><a href="#">Liên hệ</a></li>                           
                                            <%
                                                UserDTO userLogin = (UserDTO) session.getAttribute("LOGIN_USER");
                                                if (userLogin == null) {
                                                    userLogin = new UserDTO();

                                            %>

                                        <li> <a href="login.jsp">Đăng nhập </a> </li>
                                            <% } else {
                                            %>

                                        <li>
                                            <a>
                                                <%= userLogin.getFullName()%>
                                            </a>
                                            </button>
                                            <ul class="sub-menu">
                                                <li><a href="login.jsp">Sign Out</a></li>
                                            </ul>
                                        </li>
                                        <%
                                            }

                                        %>
                                    </ul>
                                </div>
                            </nav>
                            <div class="header">
                                <div class="fpt-uni-logo">
                                    <a href="#"><img src="home/image/logo.png" alt /></a>
                                </div>
                                <div class="fpt-uni-intro">
                                    <b class="content-uni-intro">PHÂN HIỆU TRƯỜNG ĐẠI HỌC FPT TẠI THÀNH PHỐ HỒ CHÍ MINH<br /></b>
                                    <b class="content-uni-intro">CÂU LẠC BỘ CỰU SINH VIÊN - FPTU ALUMNI CLUB</b>
                                </div>
                                <form action="MainController" method="POST">
                                    <div class="search" >
                                        <input name="search" class="search-text" type="search" value="<%=search%>" placeholder="Tìm công việc..." />
                                        <button class="btn-search" type="submit" name="action" value="Home_Search">Tìm kiếm</button>
                                    </div>
                                </form>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-4">
                                    </div>
                                    <div class="col-4">
                                        <form action="JobListController" method="POST"> 
                                            <div class="fix-flex">
                                                Ngành học: 
                                                <select class="btn-search" name="searchByMajor" onchange="this.form.submit()">
                                                    <%
                                                        List<MajorDTO> listMajor = (List<MajorDTO>) session.getAttribute("LIST_MAJOR");
                                                        if (listMajor != null) {
                                                            for (MajorDTO major : listMajor) {
                                                    %>  
                                                    <option value="<%= major.getMajorID()%>">
                                                        <%= major.getMajorID()%>
                                                    </option>

                                                    <%
                                                            }
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="col-3 sort">
                                        <div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container row">
                                    <div class="col-5">                         
                                        <%
                                            List<JobDTO> list = (List<JobDTO>) session.getAttribute("LIST_JOB_AUTO");
                                            List<JobDTO> list1 = (List<JobDTO>) request.getAttribute("LIST_JOB");
                                            List<JobDTO> list2 = (List<JobDTO>) request.getAttribute("LIST_JOB_BY_MAJOR");
                                            if (list != null && list2 == null && list1 == null) {
                                                for (JobDTO job : list) {
                                        %>
                                        <form action="HomeNoUserController">
                                            <div class="container_list" >
                                                <div class="logocty ">
                                                    <img src="<%= job.getImage()%>" alt=" ">
                                                </div>
                                                <div class="description ">

                                                    <a href="https://career-hcmuni.fpt.edu.vn/career-opportunities/449 ">
                                                        [OJT - SUMMER 2022] CÔNG TY CỔ PHẦN GOLDEN APPLE
                                                    </a>
                                                    <p><b><%= job.getTitle()%> </b></p>
                                                    <p>
                                                        Address: <%= job.getAddress()%>                                           
                                                    </p>
                                                    <p>Start date: <%=job.getStartDate()%></p>
                                                    <p>Price: <%= job.getPrice()%>$</p>
                                                </div>
                                            </div>
                                        </form>
                                        <%
                                                }
                                            }
                                            if (list2 != null && list1 == null && list != null) {
                                                for (JobDTO job : list2) {
                                        %>

                                        <form action="HomeNoUserController">
                                            <div class="container_list" >
                                                <div class="logocty ">
                                                    <img src="<%= job.getImage()%>" alt=" ">
                                                </div>
                                                <div class="description ">

                                                    <a href="https://career-hcmuni.fpt.edu.vn/career-opportunities/449 ">
                                                        [OJT - SUMMER 2022] CÔNG TY CỔ PHẦN GOLDEN APPLE
                                                    </a>
                                                    <p><b><%= job.getTitle()%> </b></p>
                                                    <p>
                                                        Address: <%= job.getAddress()%>                                           
                                                    </p>
                                                    <p>Start date: <%=job.getStartDate()%></p>
                                                    <p>Price: <%= job.getPrice()%>$</p>
                                                </div>
                                            </div>
                                        </form>
                                        <%
                                                }
                                            }
                                            if (list1 != null && list2 == null && list != null) {

                                                for (JobDTO job : list1) {

                                        %>

                                        <form action="HomeNoUserController">
                                            <div class="container_list" >
                                                <div class="logocty ">
                                                    <img src="<%= job.getImage()%>" alt=" ">
                                                </div>
                                                <div class="description ">

                                                    <a href="https://career-hcmuni.fpt.edu.vn/career-opportunities/449 ">
                                                        [OJT - SUMMER 2022] CÔNG TY CỔ PHẦN GOLDEN APPLE
                                                    </a>
                                                    <p><b><%= job.getTitle()%> </b></p>
                                                    <p>
                                                        Address: <%= job.getAddress()%>                                           
                                                    </p>
                                                    <p>Start date: <%=job.getStartDate()%></p>
                                                    <p>Price: <%= job.getPrice()%>$</p>
                                                </div>
                                            </div>
                                        </form>
                                        <%                                    }
                                            }
                                        %>
                                    </div>

                                    <div class="col-7 ">
                                        <div class="advertisement">
                                            <a href="https://job.fpt.edu.vn/"><img src="home/image/qcao.jpg" alt=""></a>
                                        </div>
                                        <div class="advertisement">
                                            <a href="https://job.fpt.edu.vn/"><img src="home/image/qcao2.jpg" alt=""></a>
                                        </div>                                   
                                    </div>
                                </div>
                            </div>
                        </div>                                     
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js " integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2 " crossorigin="anonymous "></script>
                </body>
                <footer class="py-2 bg-dark text-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-md-4 col-lg-12">
                                <div class="row">
                                    <div class="container pb-3">
                                        <div class="d-flex justify-content-center">
                                            <b class="text-center logo-title d-flex align-items-center" style="color: rgb(0, 145, 255); font-size: 14px;"><br>PHÂN HIỆU TRƯỜNG ĐẠI HỌC FPT TẠI
                                                THÀNH PHỐ HỒ CHÍ MINH<br />CÂU LẠC BỘ CỰU SINH VIÊN - FPTU ALUMNI CLUB</b>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6 col-md-4 col-lg-3">
                                        <h6 class="font-weight-bold text-uppercase text-orange-light" style="color:rgb(223,186,168); font-size: 13px;">
                                            Số điện thoại
                                        </h6>
                                        <ul class="list-unstyled text-white mb-6 mb-md-8 mb-lg-0 font-size-sm">
                                            <li class="mb-1">
                                                0934-177-713
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-6 col-md-4 col-lg-3">
                                        <h6 class="font-weight-bold text-uppercase text-orange-light" style="color:rgb(223,186,168); font-size: 13px;">
                                            Email
                                        </h6>
                                        <ul class="list-unstyled text-white mb-6 mb-md-8 mb-lg-0 font-size-sm">
                                            <li class="mb-1">
                                                qhdn.fuhcm@fe.edu.vn
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-6 col-md-4 col-lg-3">
                                        <h6 class="font-weight-bold text-uppercase text-orange-light" style="color:rgb(223,186,168); font-size: 13px;">
                                            Địa chỉ
                                        </h6>
                                        <ul class="list-unstyled text-white mb-6 mb-md-8 mb-lg-0 font-size-sm">
                                            <li class="mb-1">
                                                Lô E2a-7, Đường D1 Khu Công nghệ cao, P. Long Thạnh Mỹ, Q.9, TP. Hồ Chí Minh
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-6 col-md-4 col-lg-3">
                                        <div>
                                            <h6 class="font-weight-bold text-uppercase text-orange-light" style="color:rgb(223,186,168); font-size: 13px;">
                                                Mạng xã hội
                                            </h6>
                                            <ul class="list-unstyled list-inline list-social mb-6 mb-md-0">
                                                <li class="list-inline-item list-social-item mr-3">
                                                    <a href="#" target="_blank" class="text-decoration-none">
                                                        <i class="fa-brands fa-instagram"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item list-social-item mr-3">
                                                    <a href="https://www.facebook.com/daihocfpt" target="_blank" class="text-decoration-none">
                                                        <i class="fa-brands fa-facebook"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item list-social-item mr-3">
                                                    <a href="#" target="_blank" class="text-decoration-none">
                                                        <i class="fa-brands fa-twitter"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item list-social-item">
                                                    <a href="#" target="_blank" class="text-decoration-none">
                                                        <i class="fa-brands fa-pinterest"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </footer>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
                </html>