<%-- 
    Document   : giohang
    Created on : May 18, 2019, 8:43:09 AM
    Author     : TamTorres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="theme/header.jsp" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="com.google.gson.Gson"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Giỏ hàng</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->

    </head>

    <body>


        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="/">Home</a></li>
                    <li class="active">Đơn hàng của tôi</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section" type="hidden">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <form id="checkout-form" class="clearfix" method="POST" action="/giohang">

                        <div class="col-md-12">
                            <div class="order-summary clearfix">
                                <div class="section-title">
                                    <h3 class="title">Chi tiết đơn hàng #${donHang.getMaDonHang()}</h3>
                                </div>
                                
                                <div class="shiping-methods">
                                    <div class="section-title">
                                        <h4>${thanhvien.getHoTen()}</h4>
                                         <div class="caption">
                                            <p>Địa chỉ: ${thanhvien.getDiaChi()}<p>					
                                        </div>
                                         <div class="caption">
                                            <p>Điện thoại: ${thanhvien.getSoDienThoai()}<p>					
                                        </div>
                                    </div>
                                      
                                </div>
                                
                                <table class="shopping-cart-table table">
                                    <thead>
                                        <tr>
                                            <th class="text-left">Sản phẩm</th>
                                            <th></th>
                                            <th class="text-left">Giá</th>
                                            <th class="text-center">Số lượng</th>
                                         
                                            <th class="text-center">Tổng tạm tính</th>
                                            
                                                     
                                        </tr>
                                    </thead>

                                    <tbody class="donhang">
                                        <c:forEach items="${listCTDonHang}" var="obj">
                                            <tr>
                                                <td class="thumb"><img src="./img/thumb-product01.jpg" alt=""></td>
                                                <td class="details text-left">Listen!</td>
                                                <td class="price text-left">${obj.getDonGia()}</td>
                                                <td class="qty text-center">${obj.getSoLuong()}</td>
                                                <td class="total text-center"><strong class="primary-color">${obj.getDonGia()*obj.getSoLuong()}</strong></td>

                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                 
                                </table>

                                        <div>
                                           
                                            <div class="caption">
                                                <p class="text-right">Phí vận chuyển: 25000</p>					
                                            </div>
                                            <div>
                                                <p class="text-right">Tổng tiền:  <span style="font-size:20px;color:red;">${donHang.getTongTien()}</span></p> 					
                                            </div>
                                        </div>
                            </div>

                        </div>
                    </form>
                    
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->
        <jsp:include page="theme/footer.jsp" />


    </body>

</html>
