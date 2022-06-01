<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0036)https://dangky.fpt.edu.vn/dang-nhap/ -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Đại học FPT </title>
        <!-- custom-theme -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="keywords" content="Đại học FPT đăng ký tuyển sinh 2020">
        <link rel="stylesheet" href="./Login - Đại học FPT_files/bootstrap.min.css">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme  -->

        <!-- font-awesome icons -->
        <link href="./Login - Đại học FPT_files/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <link href="./Login - Đại học FPT_files/css" rel="stylesheet">

        <link rel="stylesheet" href="./Login - Đại học FPT_files/style_v2.css">
        <link rel="stylesheet" href="./Login - Đại học FPT_files/style_v2(1).css">
    </head>
    <body>
        <div class="login-form w3_form, bgi " > 
            <!--  Title-->
            <div class="login-title w3_title">
                <h2></h2>
            </div>
            <div class="login w3_login">
                <h2 class="login-header w3_header">login account </h2>

                <div class="w3l_grid">
                    <div class="hinhanhlogo">
                        <img src="./Login - Đại học FPT_files/logo2.png" alt="">
                    </div>

                    <form class="login-container" action="MainController" method="post">

                        <div class="phanthongtinloiz">

                            <input type="text" placeholder="Tài khoản" name="userID" required="">
                            <input type="password" placeholder="Password" name="password" required="">
                            <input type="submit" name="action" value="Login">


                        </div></form>
                    <div class="second-section w3_section">
                        <div class="bottom-header w3_bottom">

                        </div>
                        <div class="social-links w3_social">
                            <ul>

                            </ul>
                        </div>
                    </div>



                    
                    <style type="text/css">
                        form.login-container input {
                            padding: 13px;
                            width: 100%;
                        }
                        p.agile {
                            margin-bottom: 25px;
                        }





                        @media only screen and (max-width:746px) {


                            html .login-container input[type="submit"] {
                                -webkit-appearance: none;
                                width: 100%;
                                background-color: #f36f21;
                                color: white;

                            }

                            html .login input[type="text"], html .login input[type="Email"],html .login input[type="password"]{
                                color: black;
                                border: 1px solid #ccc6c6;
                                padding: 13px;
                            }

                            html .footer-w3l {
                                position: fixed;
                                bottom: 20px;
                                z-index: 99999;
                                left: 0px;
                                transform: translateX(-50%);
                                left: 50%;
                            }



                        }
                    </style>




                    </body></html>