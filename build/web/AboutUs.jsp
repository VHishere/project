<%-- 
    Document   : AboutUs
    Created on : Dec 9, 2024, 9:52:34 AM
    Author     : vh69
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>
            About us
        </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.tailwindcss.com/3.3.2"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"/>
        <style type="text/css">
            .a {
                color: black;
            }
        </style>
    </head>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        <section id="content">
            <div class="content-wrap notoppadding nobottompadding">
                <section id="section_about" class="corner clearfix">
                    <div class="container">
                        <h2 style="font-size: 48px; margin-top: 50px">
                            <span style="color: #ff5722;">
                                Công ty CP Khoáng sản và Bao bì Mailands
                            </span>
                        </h2>
                        <h3 style="font-weight: 400;">
                            Doanh nghiệp hàng đầu trong lĩnh vực khai thác và chế biến bột đá siêu mịn calcium carbonate
                        </h3>
                        <div class="section_about_content col-md-12" style="margin-top: 30px;">
                            
                            <div class="col-md-12">
                                <div class="section_about_content_text">
                                    <p><i class="fa fa-check" aria-hidden="true"></i>
                                        Nhà máy diện tích 5 ha</p>
                                    <p><i class="fa fa-check" aria-hidden="true"></i>
                                        Được đầu tư dây truyền hiện đại công suất thiết kế 100,000 tấn/năm</p>
                                    <p><i class="fa fa-check" aria-hidden="true"></i>
                                        Các sản phẩm sản xuất ra đạt chất lượng cao và ổn định, phù hợp với nhu cầu sử dụng của thị trường trong nước và xuất khẩu</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="section_inspiration" class="marbtm10 clearfix">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="col-sm-12 col-md-9 col-md-offset-3 ">
                                <div class="section_content">
                                    <h2 class="section_inspiration_title">Sản phẩm chính</h2>
                                    <div class="section_inspiration_content">
                                        <p>Bột đá trắng siêu mịn phục vụ cho các ngành công nghiệp nhựa, giấy, sơn, cao su, ect.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 " style="text-align: center;">
                            <a href="">
                                <picture>
                                    <img src="Images/banner2.jpg"
                                         alt="section_inspiration_small" itemprop="image" height="500px"
                                         title="section_inspiration_small">
                                </picture>
                            </a>
                        </div>
                    </div>
                </section>
                <section id="section_material" class="clearfix">
                    <div class="row marbtm10">
                        <div class="col-sm-6 col-sm-push-6 ">
                            <div class="col-sm-12 col-md-9">
                                <div class="section_content">
                                    <h3 class="section_material_1_title">Nguyên liệu & công dụng</h3>
                                    <div class="section_material_1_content">
                                        <p>- Nguồn đá nguyên liệu được khai thác và tuyện chọn từ nguồn đá trắng tại Mông Sơn và Lục Yên có trữ lượng lớn, có hàm lượng CaCO3 lớn hơn 98,5% cũng như độ trắng, độ sáng cao và đồng nhất; được các chuyên gia trong và ngoài nước đánh giá là tốt nhất Việt Nam và Đông Nam Á.</p>
                                        <p>- Sản phẩm bột đá siêu mịn của chúng tôi được sử dụng làm phụ gia trong các ngành sản xuất chính như Sơn, Nhựa, giấy, bao bì, cao su, vv.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-sm-pull-6 " style="text-align: center;">
                            <picture>
                                <img src="Images/banner10.jpg"
                                     alt="section_material_1_image" itemprop="image" title="section_material_1_image">
                            </picture>
                        </div>
                    </div>
                    <div class="row marbtm10">
                        <div class="col-sm-6 ">
                            <div class="col-sm-12 col-md-9 col-md-offset-3">
                                <div class="section_content">
                                    <div class="section_material_2_content">
                                        Với quyết tâm cao cùng đội ngũ công nhân viện được đào tạo bài bản, chuyên nghiệp, thương hiệu bột đá trắng MAILANDS đã từng bước khẳng định được vị thế trong mắt các quý khách hàng trong cũng như các thị trường quốc tế lớn.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 " style="text-align: center;">
                            <picture>
                                <img src="Images/banner14.jpg" height="500px" width="650px"
                                     alt="section_material_2_image" itemprop="image" title="section_material_2_image">
                            </picture>
                        </div>
                    </div>
                </section>
                <div class="clear"></div>
                <div id="section_contact" class="page-section nobottompadding notoppadding"  style="padding: 0">
                    <div class="row noleftmargin norightmargin common-height">
                        <div class='index_map col-md-6 col-sm-6 hidden-xs nopadding'>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3707.6290200394847!2d104.94768607509974!3d21.678284080138603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3133596e5f8effb5%3A0xdf5f90a187126d76!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gS2hvw6FuZyBz4bqjbiB2w6AgQmFvIGLDrCBNYWlsYW5kcw!5e0!3m2!1sen!2s!4v1733732203376!5m2!1sen!2s" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                        <div class="col-md-6 col-sm-6" style="background-color: #383c44">
                            <div class="max-height" style='padding: 60px 30px'>
                                <h3 class="" style='color: #ffffff; font-size: 24px; '>Địa chỉ</h3>
                                <div style="line-height: 1.7;">
                                    <address style="line-height: 1.7; font-size: 16px; color: #dbdbdb ;">
                                        <strong style='color: #fff'>Nhà máy:</strong><br>
                                        MXH2+846, Khu KCN Phía Nam<br>
                                        Xã Văn Phú, Yên Bái<br>
                                    </address>
                                    <address style="line-height: 1.7; font-size: 16px; color: #dbdbdb ;">
                                        <strong style='color: #fff'>Văn phòng chính:</strong><br>
                                        169 Nguyễn Ngọc Vũ<br>
                                        Cầu Giấy, Hà Nội<br>
                                        Hotline: 033 510 9955<br />
                                        Email: Sale@navicom.com.vn
                                    </address>
                                    <address style="line-height: 1.7; font-size: px; color: #ffffff ;">
                                    </address>
                                    <address style="line-height: 1.7; font-size: px; color: #ffffff ;">
                                    </address>
                                    <address style="line-height: 1.7; font-size: px; color: #ffffff ;">
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <style>
                    #section_contact {
                        position: relative;
                    }
                    .modal-body {
                        padding: 30px 15px;
                    }
                    button.close {
                        margin: 5px 10px;
                        z-index: 99;
                        position: absolute;
                        right: 0;
                    }
                    .contact-form {
                        background: #fff;
                        height: 356px
                    }
                    .flip-box-part {
                        padding: 38px 40px 34px;
                        width: 100%;
                        margin: 0;
                        top: 0;
                        left: 0;
                        -webkit-backface-visibility: hidden;
                        backface-visibility: hidden;
                        -webkit-transition: 0.6s;
                        -webkit-transform-style: preserve-3d;
                        -webkit-transform: rotateY(0deg);
                        -moz-transition: 0.6s;
                        -moz-transform-style: preserve-3d;
                        -moz-transform: rotateY(0deg);
                        -o-transition: 0.6s;
                        -o-transform-style: preserve-3d;
                        -o-transform: rotateY(0deg);
                        -ms-transition: 0.6s;
                        -ms-transform-style: preserve-3d;
                        -ms-transform: rotateY(0deg);
                        transition: 0.6s;
                        -webkit-transform-style: preserve-3d;
                        transform-style: preserve-3d;
                        -webkit-transform: rotateY(0deg);
                        transform: rotateY(0deg);
                    }
                    .btn-block {
                        font: 600 19px/63px "Poppins", sans-serif;
                        text-transform: uppercase;
                        border: none;
                        transition: all 300ms linear 0s;
                        border-radius: 0;
                        background: #0084ff;
                        color: #FFF;
                        white-space: nowrap;
                        overflow: hidden;
                        text-overflow: ellipsis;
                    }
                    .form-control {
                        border-radius: 0;
                        box-shadow: none;
                        font: 300 17px/24px "Poppins", sans-serif;
                        padding: 12px 18px;
                        height: 50px;
                        border-color: #e0e8ee;
                        background: #f8fbfd;
                    }
                    .contact-form .js-close-flip {
                        position: absolute;
                        right: 0;
                        top: 0;
                        padding: 5px 10px;
                        font-size: 23px;
                        text-decoration: none;
                        color: #c0cad0;
                    }
                    .form-group {
                        margin-bottom: 20px;
                    }
                    .row-15 {
                        margin-left: -15px;
                        margin-right: -15px;
                    }
                    .contact-box h2 {
                        color: #374048;
                        margin: 0;
                        font-weight: bold;
                        text-transform: uppercase;
                    }
                    .contact-box ul li {
                        color: #777;
                        font-size: 16px;
                        padding-left: 30px;
                    }
                    .contact-box ul li i {
                        width: 30px;
                        float: left;
                        margin-left: -30px;
                        line-height: 32px;
                    }
                    .contact-box ul {
                        margin: 25px 0 30px;
                    }
                    .contact-box ul li+li {
                        margin-top: 10px;
                    }
                </style>
            </div>
        </section>
        <jsp:include page="Footer.jsp"/>
    </div>
<!--    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/bootstrap.min.scss.css?1671122359380"
          rel="stylesheet" type="text/css" media="all" />-->
    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/style.css?1671122359380" rel="stylesheet"
          type="text/css" media="all" />
    <link rel="stylesheet" type="text/css"
          href="//hstatic.net/0/global/design/member/fonts/svn-gotham-book,sans-serif.css">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/scripts.js?1671122359380"
    type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/clickevents.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
