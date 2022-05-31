<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hồ sơ ứng viên</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="node_modules/bootstrap/dist/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="node_modules/font-awesome/css/font-awesome.min.css"
    />
    <link rel="stylesheet" href="css/bootstrap-social.css" />
    <link href="./studentAccountTemplate/studentAccount css/style.css" rel="stylesheet" />
  </head>
  
  <body>
    
    <div class="banner">
      
    <div class="container-all">
      
      <nav>
        
        <div class="menu">
          <ul>
            <li><a href="#">Trang chủ</a></li>
            <li>
              <a href="#">Giới thiệu</a>
              <ul class="sub-menu">
                <li><a href="">Về đại học FPT</a></li>
                <li><a href="">Các ngành đào tạo</a></li>
                <li><a href="">Các đối tác</a></li>
              </ul>
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
            <li><a href="#">Đăng nhập</a></li>
          </ul>
        </div>
        
        
        
      </nav>
      
      <div class="header">
        
        <div class="fpt-uni-logo">
          <a href="#"><img src="./studentAccountTemplate/studentAccount css/img/logo-fpt-certificate.png" alt /></a>
        </div>
        <div class="fpt-uni-intro">
          <b class="content-uni-intro">PHÂN HIỆU TRƯỜNG ĐẠI HỌC FPT TẠI THÀNH PHỐ HỒ CHÍ MINH<br/></b>
          <b class="content-uni-intro">CÂU LẠC BỘ CỰU SINH VIÊN - FPTU ALUMNI CLUB</b>
        </div>
        <div class="search">
          <input class="search-text" type="search" placeholder="Tìm công việc..." />
          <button class="btn-search">Tìm kiếm</button>
        </div>
      </div>
      
    <div class="page-content page-container" id="page-content">
      <div class="padding">
        <div class="row container d-flex justify-content-center">
          <div class="col-xl-12 col-md-12">
            <div class="card user-card-full"  style="border-radius: 15px;">
              <div class="row m-l-0 m-r-0 form-text">
                <div class="bg-c-lite-green user-profile"  style="margin-bottom:15px;">
                  <div class="card-block text-center text-white">
                    <div class="m-b-25">
                      <div class="img-preview mt-2">
                        <input type="file" class="form-control d-none" name="files[]" accept=".jpg,.jpeg,.png" onchange="convertImageToBase64(event)"/>
                          <img class="img-base64 img-fluid img-set" style="border-radius: 5px;" src="./studentAccountTemplate/studentAccount css/img/large_1651236369153.jpg" />
                      </div>
                    </div>
                    <div class="container-text">
                      <!-- <h6>Thông tin tài khoản</h6> -->
                      <svg viewBox="0 0 960 300">
                        <symbol id="s-text">
                          <text text-anchor="middle" x="50%" y="80%">Thông tin tài khoản</text>
                        </symbol>
                        <g class = "g-ants">
                          <use xlink:href="#s-text" class="text-copy"></use>
                          <use xlink:href="#s-text" class="text-copy"></use>
                          <use xlink:href="#s-text" class="text-copy"></use>
                          <use xlink:href="#s-text" class="text-copy"></use>
                          <use xlink:href="#s-text" class="text-copy"></use>
                        </g>
                      </svg>
                    </div>
                    <i class="mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                  </div>
                </div>
                <div class="">
                  <div class="card-block">
                    <h6 class="m-b-20 p-b-5 b-b-default f-w-600" style="font-size: 20px; padding-left: 80px;">Information</h6>
                    <div class="form-group row">
                      <label class="col-lg-4 col-form-label form-control-label file-student">Họ và tên lót*:</label>
                      <div class="col-lg-8 pl-0">
                        <input class="form-control text-capitalize" name="last_name" value="" 
                        style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 238, 227);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 160px;" disabled/>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-lg-4 col-form-label form-control-label file-student">Tên*:</label>
                      <div class="col-lg-8">
                        <input class="form-control text-capitalize" name="first_name" value="" 
                        style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 238, 227);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-right: 150px;
                            border-radius: 15px;
                            margin-left: 145px;
                            width: 612px;" disabled>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label class="col-lg-4 col-form-label form-control-label file-student">Giới tính*:</label>
                      <div class="col-lg-8">
                        <select class="form-control" name="gender_id" 
                        style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 238, 227);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 145px;
                            width: 612px;">
                          <option value="2" >Nam</option>
                          <option value="3" >Nữ</option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="form-group row">
                    <label class="col-lg-4 col-form-label form-control-label file-student-list">Ngày sinh*:</label>
                    <div class="col-lg-8">
                      <input class="form-control d-none" name="birthday" value=""/>
                      <input type="date" class="form-control dp" readonly value="" 
                      style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;"/>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-lg-4 col-form-label form-control-label file-student-list">Mã số sinh viên*:</label>
                    <div class="col-lg-8">
                      <input class="form-control text-uppercase" type="text" value="" name="studentid" placeholder=""
                      style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;" disabled>
                    </div>
                  </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-list">Ngành đào tạo*:
                  </label>
                  <div class="col-lg-8">
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="1">
                      <label class="student-major">Kỹ thuật phần mềm (SE)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="2" >
                      <label class="student-major">An toàn thông tin (IA)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="3" >
                      <label class="student-major">Trí tuệ nhân tạo (AI)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="4" >
                      <label class="student-major">Hệ thống thông tin (IS)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="5" >
                      <label class="student-major"> Internet vạn vật (IoT)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="6" >
                      <label class="student-major">Thiết kế đồ họa (GD)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="7" >
                      <label class="student-major">Truyền thông đa phương tiện (MC)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="8" >
                      <label class="student-major">Quản trị kinh doanh (BA)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="9" >
                      <label class="student-major">Digital Marketing (DM)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="10" >
                      <label class="student-major">Kinh doanh quốc tế (IB)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="11" >
                      <label class="student-major">Quản trị khách sạn (HM)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="12" >
                      <label class="student-major">Quản trị du lịch và lữ hành (HT)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="13" >
                      <label class="student-major">Ngôn ngữ Anh (EL)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="14" >
                      <label class="student-major">Ngôn ngữ Nhật (JP)</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                      <input class="checkbox-major" type="checkbox" name="majors[]" value="15" >
                      <label class="student-major">Ngôn ngữ Hàn (KR)</label>
                    </div>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-list">Mô tả chuyên ngành hẹp/nhánh chuyên môn sâu (nếu có):</label>
                  <div class="col-lg-8">
                    <input class="form-control" type="text" value="" name="specialization" 
                    style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 700 px;">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-list">Số điện thoại*:</label>
                  <div class="col-lg-8">
                    <input class="form-control" name="phone_number" value="" 
                    style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-list">Email FPTU:</label>
                  <div class="col-lg-8">
                    <input class="form-control" name="email_fptu" value="" 
                    style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-list">Email cá nhân*:</label>
                  <div class="col-lg-8">
                    <input class="form-control" name="email" value="" 
                    style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-12 pl-0 col-form-label form-control-label">
                    <p class="file-student-title" style="font-size: 16px;">Địa chỉ liên hệ*:</p></label>
                  <label class="col-lg-4 col-form-label form-control-label student-certi">Tỉnh/TP*:</label>
                  <div class="col-lg-8 form-group">
                    <select class="form-control sel2-provinces" name="province" 
                    style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;">
                      <option value="1"  >An Giang</option>
                      <option value="2"  >Bà Rịa-Vũng Tàu</option>
                      <option value="3"  >Bạc Liêu</option>
                      <option value="4"  >Bắc Kạn</option>
                      <option value="5"  >Bắc Giang</option>
                      <option value="6"  >Bắc Ninh</option>
                      <option value="7"  >Bến Tre</option>
                      <option value="8"  >Bình Dương</option>
                      <option value="9"  >Bình Định</option>
                      <option value="10"  >Bình Phước</option>
                      <option value="11"  >Bình Thuận</option>
                      <option value="12"  >Cà Mau</option>
                      <option value="13"  >Cao Bằng</option>
                      <option value="14"  >Cần Thơ</option>
                      <option value="15"  >Đà Nẵng</option>
                      <option value="16"  >Đắk Lắk</option>
                      <option value="17"  >Đắk Nông</option>
                      <option value="18"  >Điện Biên</option>
                      <option value="19"  >Đồng Nai</option>
                      <option value="20"  >Đồng Tháp</option>
                      <option value="21"  >Gia Lai</option>
                      <option value="22"  >Hà Giang</option>
                      <option value="23"  >Hà Nam</option>
                      <option value="24"  >Hà Nội</option>
                      <option value="25"  >Hà Tây</option>
                      <option value="26"  >Hà Tĩnh</option>
                      <option value="27"  >Hải Dương</option>
                      <option value="28"  >Hải Phòng</option>
                      <option value="29"  >Hòa Bình</option>
                      <option value="30"  >Hồ Chí Minh</option>
                      <option value="31"  >Hậu Giang</option>
                      <option value="32"  >Hưng Yên</option>
                      <option value="33"  >Khánh Hòa</option>
                      <option value="34"  >Kiên Giang</option>
                      <option value="35"  >Kon Tum</option>
                      <option value="36"  >Lai Châu</option>
                      <option value="37"  >Lào Cai</option>
                      <option value="38"  >Lạng Sơn</option>
                      <option value="39"  >Lâm Đồng</option>
                      <option value="40"  >Long An</option>
                      <option value="41"  >Nam Định</option>
                      <option value="42"  >Nghệ An</option>
                      <option value="43"  >Ninh Bình</option>
                      <option value="44"  >Ninh Thuận</option>
                      <option value="45"  >Phú Thọ</option>
                      <option value="46"  >Phú Yên</option>
                      <option value="47"  >Quảng Bình</option>
                      <option value="48"  >Quảng Nam</option>
                      <option value="49"  >Quảng Ngãi</option>
                      <option value="50"  >Quảng Ninh</option>
                      <option value="51"  >Quảng Trị</option>
                      <option value="52"  >Sóc Trăng</option>
                      <option value="53"  >Sơn La</option>
                      <option value="54"  >Tây Ninh</option>
                      <option value="55"  >Thái Bình</option>
                      <option value="56"  >Thái Nguyên</option>
                      <option value="57"  >Thanh Hóa</option>
                      <option value="58"  >Thừa Thiên - Huế</option>
                      <option value="59"  >Tiền Giang</option>
                      <option value="60"  >Trà Vinh</option>
                      <option value="61"  >Tuyên Quang</option>
                      <option value="62"  >Vĩnh Long</option>
                      <option value="63"  >Vĩnh Phúc</option>
                      <option value="64"  >Yên Bái</option>
                      <option value="65"  >Nước ngoài</option>
                    </select>
                  </div>
                  <label class="col-lg-4 col-form-label form-control-label student-certi">Địa chỉ cụ thể:</label>
                  <div class="col-lg-8 form-group">
                    <input class="form-control" name="specificaddress" value="" value="" 
                    style="padding: 7px 30px 7px 15px;
                        background: rgb(255, 238, 227);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 150px;
                        width: 612px;">
                  </div>
                </div>
                <h6 class="m-b-20 p-b-5 b-b-default f-w-600" style="font-size: 20px; padding-left: 80px; margin-top: 50px;">Certificates</h6>
                <div class="form-group row">
                  <label class="col-lg-12 pl-0 col-form-label form-control-label">
                    <p class="file-student-title" style="font-size: 16px;">Ngoại ngữ:</p></label>
                  <label class="col-lg-4 col-form-label form-control-label student-certi">Tiếng Anh (VD: IELTS 5.5):</label>
                  <div class="col-lg-8 form-group">
                    <input class="form-control" name="english_language_skill" value="" 
                    style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 198, 193);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 150px;
                            width: 612px;">
                  </div>
                  <label class="col-lg-4 col-form-label form-control-label student-certi">Ngoại ngữ khác:</label>
                  <div class="col-lg-8 form-group">
                    <input class="form-control" name="other_language_skill" value="" 
                    style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 198, 193);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 150px;
                            width: 612px;">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-title">Tin học (VD: MS Office, Photoshop…):</label>
                  <div class="col-lg-8">
                    <input class="form-control" name="informatics_certificate" value="" 
                    style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 198, 193);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 150px;
                            width: 612px;">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-title">Mô tả ngắn về năng lực chuyên môn:</label>
                  <div class="col-lg-8">
                    <textarea class="form-control" name="summary_industry_skill" rows="10" 
                    style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 198, 193);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 150px;
                            width: 612px;
                            height: 80px;"></textarea>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-title">Mô tả ngắn về kinh nghiệm làm việc:</label>
                  <div class="col-lg-8">
                    <textarea rows="10" class="form-control" name="summary_working_experience" 
                    style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 198, 193);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 150px;
                            width: 612px;
                            height: 80px;"></textarea>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label file-student-title">Mô tả ngắn về kỹ năng:</label>
                  <div class="col-lg-8">
                    <textarea rows="10" class="form-control" name="summary_general_skill" 
                    style="padding: 7px 30px 7px 15px;
                            background: rgb(255, 198, 193);
                            box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                            clear: both; ; color: rgb(0, 0, 0); 
                            transition: 0.5s;
                            text-align: center;
                            border-radius: 15px;
                            margin-left: 150px;
                            width: 612px;
                            height: 80px;"></textarea>
                  </div>
                </div>
                <div class="row">
                  <div class="col-xl-6">
                    <div class="form-group">
                      <label class="student-major-cv">CV cá nhân:</label>
                      <input type="file" class="form-control" name="cvs[]" multiple 
                      style="padding: 7px 30px 7px 15px;
                                background: rgb(253, 226, 223);
                                box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                                clear: both; ; color: rgb(0, 0, 0); 
                                transition: 0.5s;
                                text-align: center;
                                border-radius: 15px;
                                margin-left: 150px;
                                padding-bottom: 37px;
                                width: 280px;"/>
                    </div>
                    <div class="w-100">
                      <a href=""></a>
                    </div>
                  </div>
                  <div class="col-xl-6">
                    <div class="form-group">
                      <label class="student-major">Các văn bằng, chứng chỉ:</label>
                      <input type="file" class="form-control" name="certificates[]" multiple 
                      style="padding: 7px 30px 7px 15px;
                                background: rgb(253, 226, 223);
                                box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                                clear: both; ; color: rgb(0, 0, 0); 
                                transition: 0.5s;
                                text-align: center;
                                border-radius: 15px;
                                padding-bottom: 37px;
                                width: 280px;"/>
                    </div>
                    <div class="w-100">
                      <a href=""></a>
                    </div>
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label  file-student-title">Công việc đã ứng tuyển:</label>
                  <table class="table table-bordered" 
                  style="padding: 7px 30px 7px 15px;
                        background: rgb(253, 226, 223);
                        box-shadow: rgba(0, 0, 0, 0.1) 3px 4px 4px; 
                        clear: both; ; color: rgb(0, 0, 0); 
                        transition: 0.5s;
                        text-align: center;
                        border-radius: 15px;
                        margin-left: 164px;
                        margin-right: 172px;
                        border: none;">
                    <thead>
                      <tr>
                        <th scope="col" style="width: 60%;">TIN ĐÃ ỨNG TUYỂN</th>
                        <th scope="col" style="width: 40%;">THỜI GIAN ỨNG TUYỂN</th>
                      </tr>
                    </thead>
                    <tbody class="job-table-body">
                      <tr>
                        <td><br/></td>
                        <td class="d-flex justify-content-end align-items-start h-100"></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="form-group row">
                  <label class="col-lg-4 col-form-label form-control-label"></label>
                  <div class="col-lg-8">
                    <input type="reset" class="btn btn-secondary btnCancel" style="margin-left: 20px;" value="Cancel">
                    <input type="submit" form="save-form" class="btn btn-primary btnSave" value="Save Changes">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
</div>

</div>

</body> 
        <footer class="py-2 bg-dark text-white">
          <div class="container">
            <div class="row">
              <div class="col-12 col-md-4 col-lg-12">
                <div class="row">
                  <div class="container pb-3">
                    <div class="d-flex justify-content-center">
                      <b class="text-center logo-title d-flex align-items-center" style="color: rgb(0, 145, 255); font-size: 14px;"><br>PHÂN HIỆU TRƯỜNG ĐẠI HỌC FPT TẠI THÀNH PHỐ HỒ CHÍ MINH<br />CÂU LẠC BỘ CỰU SINH VIÊN - FPTU ALUMNI CLUB</b>
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
        </footer>
        
        <div class="f1-effect">
	
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
          <div class="f1-effect-flower">
          </div>
          
        </div>
         
        <style>
        .f1-effect {
          position: relative;
          z-index: 99999999; }
          .f1-effect .f1-effect-flower {
            opacity: 1;
            border-radius: 100%;
            background: url(https://file.hstatic.net/200000259653/file/pages_17a8568517e94dcd9c8aec5587_570924d1fa4b4da1aa011044c9d7cc1c.png);
            position: fixed;
            top: -10%;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            cursor: default;
            -webkit-animation-name: snowflakes-fall, snowflakes-shake;
            -webkit-animation-duration: 10s, 3s;
            -webkit-animation-timing-function: linear, ease-in-out;
            -webkit-animation-iteration-count: infinite, infinite;
            -webkit-animation-play-state: running, running;
            animation-name: snowflakes-fall, snowflakes-shake;
            animation-duration: 10s, 3s;
            animation-timing-function: linear, ease-in-out;
            animation-iteration-count: infinite, infinite;
            animation-play-state: running, running; }
            @media (max-width: 767px) {
              .f1-effect .f1-effect-flower:nth-of-type(2n) {
                display: none; } }
            .f1-effect .f1-effect-flower:nth-of-type(0) {
              left: 5%;
              -webkit-animation-delay: 1s, 1s;
              animation-delay: 1s, 1s;
              width: 16px;
              height: 16px;
              background-position: 0 -23px; }
            .f1-effect .f1-effect-flower:nth-of-type(1) {
              left: 10%;
              -webkit-animation-delay: 6s, 0.5s;
              animation-delay: 6s, 0.5s;
              width: 13px;
              height: 13px;
              background-position: 0 -50px; }
            .f1-effect .f1-effect-flower:nth-of-type(2) {
              left: 20%;
              -webkit-animation-delay: 4s, 2s;
              animation-delay: 4s, 2s;
              width: 15px;
              height: 15px;
              background-position: -49px -35px; }
            .f1-effect .f1-effect-flower:nth-of-type(3) {
              left: 30%;
              -webkit-animation-delay: 2s, 2s;
              animation-delay: 2s, 2s;
              width: 14px;
              height: 14px;
              background-position: -31px 0; }
            .f1-effect .f1-effect-flower:nth-of-type(4) {
              left: 40%;
              -webkit-animation-delay: 8s, 3s;
              animation-delay: 8s, 3s;
              width: 16px;
              height: 16px;
              background-position: 0 -23px; }
            .f1-effect .f1-effect-flower:nth-of-type(5) {
              left: 50%;
              -webkit-animation-delay: 6s, 2s;
              animation-delay: 6s, 2s;
              width: 13px;
              height: 13px;
              background-position: 0 -50px; }
            .f1-effect .f1-effect-flower:nth-of-type(6) {
              left: 60%;
              -webkit-animation-delay: 2.5s, 1s;
              animation-delay: 2.5s, 1s;
              width: 15px;
              height: 15px;
              background-position: -49px -35px; }
            .f1-effect .f1-effect-flower:nth-of-type(7) {
              left: 70%;
              -webkit-animation-delay: 1s, 0s;
              animation-delay: 1s, 0s;
              width: 14px;
              height: 14px;
              background-position: -31px 0; }
            .f1-effect .f1-effect-flower:nth-of-type(8) {
              left: 80%;
              -webkit-animation-delay: 2s, 2s;
              animation-delay: 2s, 2s;
              width: 14px;
              height: 14px;
              background-position: -31px 0; }
            .f1-effect .f1-effect-flower:nth-of-type(9) {
              left: 90%;
              -webkit-animation-delay: 8s, 3s;
              animation-delay: 8s, 3s;
              width: 16px;
              height: 16px;
              background-position: 0 -23px; }
            .f1-effect .f1-effect-flower:nth-of-type(10) {
              left: 95%;
              -webkit-animation-delay: 6s, 2s;
              animation-delay: 6s, 2s;
              width: 13px;
              height: 13px;
              background-position: 0 -50px; }
         
        @-webkit-keyframes snowflakes-fall {
          0% {
            top: -10%; }
          100% {
            top: 100%; } }
         
        @-webkit-keyframes snowflakes-shake {
          0% {
            -webkit-transform: translateX(0px);
            transform: translateX(0px); }
          50% {
            -webkit-transform: translateX(80px);
            transform: translateX(80px); }
          100% {
            -webkit-transform: translateX(0px);
            transform: translateX(0px); } }
         
        @keyframes snowflakes-fall {
          0% {
            top: -10%; }
          100% {
            top: 100%; } }
         
        @keyframes snowflakes-shake {
          0% {
            transform: translateX(0px); }
          50% {
            transform: translateX(80px); }
          100% {
            transform: translateX(0px); } }
         
        </style>
  </body>
  
</html>
