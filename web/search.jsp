<%-- 
    Document   : search
    Created on : May 8, 2019, 12:38:31 AM
    Author     : Dell
--%>

<%@page import="Model.SachModel"%>
<%@page import="Model.TheLoaiModel"%>
<%@page import="java.util.List"%>
<%@page import="Utility.MyUtils"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="theme/header.jsp" />
<body>

 
    <!-- BREADCRUMB -->
    <div id="breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Products</li>
            </ul>
        </div>
    </div>
    <!-- /BREADCRUMB -->

    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- ASIDE -->
                <div id="aside" class="col-md-3">


                    <!-- aside widget -->
                    <div class="aside">

                        <h3 class="aside-title">Filter by Thể loại


                        </h3>
                        <ul class="list-links">
                            <li><a href="/search?tukhoa=${tukhoa}&matheloai=0">Tất cả</a></li>

                            <%   Connection conn = MyUtils.getStoredConnection(request);

                                List<TheLoaiModel> listAllTheLoai = TheLoaiModel.getAllTheLoai(conn);
                                for (TheLoaiModel obj : listAllTheLoai) {
                                    out.print("<li><a href=\"/search?tukhoa=" + request.getAttribute("tukhoa") + "&matheloai=" + obj.getMaTheLoai() + "&page=1 \">" + obj.getTenTheLoai() + "</a></li>");
                                }


                            %>
                        </ul>
                    </div>
                    <!-- /aside widget -->
                </div>
                <!-- /ASIDE -->

                <!-- MAIN -->
                <div id="main" class="col-md-9">
                    <!-- store top filter -->
                    <div class="store-filter clearfix">
                        <div class="pull-left">
                         Kết quả tìm kiếm
                        </div>
                        <div class="pull-right">

                            <ul class="store-pages">
                                <li><span class="text-uppercase">Page:</span></li>
                                <li class="active"></li>

                                <%                                                                    
                                    String tuKhoa = (String) request.getAttribute("tukhoa");
                                    Integer maTheLoai = Integer.parseInt(request.getAttribute("numofpage").toString());
 
                                    for (int i = 0; i < maTheLoai; i++) {
                                        out.print("<li><a href=\"/search?tukhoa=" + request.getAttribute("tukhoa") + "&matheloai=" + request.getAttribute("matheloai") + "&page=" + (i + 1) + "\">" + (i + 1) + "</a></li>");

                                    }
                                    if (maTheLoai == 0) {
                                        out.print("<li><a href=\"#\">1</a></li>");
                                    }

                                %>


                            </ul>
                        </div>
                    </div>
                    <!-- /store top filter -->

                    <!-- STORE -->
                    <div id="store">
                        <!-- row -->
                        <div class="row">
                            <tbody>
                                ${listSach.size()==0?"Không tìm thấy sách!":""}  
                                <c:set var="currentDate" value="${curentTimeStamp}" />
                                <c:forEach items="${listSach}" var="obj">
                                    <!-- Product Single -->
                                <div class="col-md-4 col-sm-6 col-xs-6">
                                    <div class="product product-single">
                                        <div class="product-thumb">
                                            <div class="product-label">
                                                <c:if test="${obj.getPhanTramGiamGia()!=0}">

                                                    <fmt:formatNumber var="lamtron"
                                                                      value="${obj.getPhanTramGiamGia()}"
                                                                      maxFractionDigits="0" 
                                                                      groupingUsed="false"/>

                                                    <fmt:formatNumber var="khonglamtron"
                                                                      value="${obj.getPhanTramGiamGia()}"
                                                                      maxFractionDigits="10" 
                                                                      groupingUsed="false" />

                                                    <c:choose>
                                                        <c:when test="${obj.getNgayBatDauGiamGia() <= currentDate}">
                                                            <c:if test="${obj.getNgayKetThucGiamGia() >= currentDate}">
                                                                <span>SALE</span>
                                                                <span class="sale">
                                                                    <c:choose>

                                                                        <c:when test="${lamtron != khonglamtron}">

                                                                            ${khonglamtron}
                                                                        </c:when> 
                                                                        <c:otherwise>

                                                                            ${lamtron}
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                    %
                                                                </span>    
                                                            </c:if>


                                                        </c:when>
                                                        <c:otherwise>

                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:if>

                                            </div>
                                            <a href="${contextPath}/product?masach=${obj.getMaSach()}"  class="main-btn quick-view"><i  class="fa fa-search-plus"></i> Quick view</a>
                                            <img src="${obj.getAnhDaiDien()}" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-price">
                                                <fmt:formatNumber var="giagoc"
                                                                  value="${obj.getGiaBan()}"
                                                                  maxFractionDigits="0" 
                                                                  groupingUsed="true" />
                                                <fmt:formatNumber var="giagocsaugiamgia"
                                                                  value="${(100-obj.getPhanTramGiamGia())*0.01*obj.getGiaBan()}"
                                                                  maxFractionDigits="0" 
                                                                  groupingUsed="true"/>




                                                <c:choose>
                                                    <c:when test="${obj.getPhanTramGiamGia()==0}">
                                                        ${giagoc}
                                                    </c:when> 
                                                    <c:otherwise>
                                                        <c:choose>
                                                            <c:when test="${obj.getNgayBatDauGiamGia() <= currentDate}">
                                                                <c:choose>
                                                                    <c:when test="${obj.getNgayKetThucGiamGia() >= currentDate}">
                                                                        ${giagocsaugiamgia}

                                                                    </c:when>
                                                                    <c:otherwise>

                                                                        ${giagoc}
                                                                    </c:otherwise>
                                                                </c:choose>

                                                            </c:when>
                                                            <c:otherwise>
                                                                ${giagoc}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:otherwise>
                                                </c:choose>

                                                <del class="product-old-price">
                                                    <c:if test="${obj.getPhanTramGiamGia()!=0}">
                                                        <c:choose>
                                                            <c:when test="${obj.getNgayBatDauGiamGia() <= currentDate}">
                                                                <c:if test="${obj.getNgayKetThucGiamGia() >= currentDate}">

                                                                    ${giagoc}
                                                                </c:if>
                                                            </c:when>
                                                        </c:choose>
                                                    </c:if>

                                                </del>
                                            </h3>   
                                       
                                            <h2 class="product-name"><a href="${contextPath}/product?masach=${obj.getMaSach()}">${obj.getTenSach()}</a></h2>
                                            <div class="product-btns"> 
                                                <button class="primary-btn add-to-cart" data-id="${obj.getMaSach()}"></i> Add to Cart</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->

                            </c:forEach>
                            </tbody>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /STORE -->

                    <!-- store bottom filter -->
                    <div class="store-filter clearfix">
                        <div class="pull-left">
                             
                        </div>
                        <div class="pull-right">

                            <ul class="store-pages">
                                <li><span class="text-uppercase">Page:</span></li>
                                <li class="active"></li>

                                <%                                                                   
                                    for (int i = 0; i < maTheLoai; i++) {
                                        out.print("<li><a href=\"/search?tukhoa=" + request.getAttribute("tukhoa") + "&matheloai=" + request.getAttribute("matheloai") + "&page=" + (i + 1) + "\">" + (i + 1) + "</a></li>");

                                    }
                                    if (maTheLoai == 0) {
                                        out.print("<li><a href=\"#\">1</a></li>");
                                    }

                                %>


                            </ul>
                        </div>
                    </div>
                    <!-- /store bottom filter -->
                </div>
                <!-- /MAIN -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /section -->
 





</body>
<jsp:include page="theme/footer.jsp" />
