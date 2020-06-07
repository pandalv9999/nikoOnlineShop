<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Niko Health Care</title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon.png"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/photoGallery.css"/> ">
    <script src="<c:url value="/resource/js/photoGallery.js"/>"></script>
<%--    <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>--%>
</head>
<body>
<%@ include file="/WEB-INF/pages/navbar.jsp"%>
<%--<%@ include file="WEB-INF/pages/slider.jsp"%>--%>
<p class="sub-title">Our Product</p>
<div class="product-grid">
    <c:forEach items="${products}" var="prod">
        <div class="product-container">
            <img src="<c:url value="/resource/images/${prod.id}/main.png"/> " class="product-image" alt="${prod.productName}" width="350px" height="350px">
            <div class="product-text">
                <p class="product-title">${prod.productName}</p>
                <p class="product-description">${prod.productDescription.substring(13, 213)}...</p>
                <a href="/onlineShop/getProductById/${prod.id}">Read More</a>
            </div>
        </div>
    </c:forEach>
</div>
<p class="sub-title">Our Certificates</p>
<div class="slideshow-container">

    <c:forEach var="i" begin="1" end="${imgNums}">
        <div class="mySlides fade">
            <div class="numbertext">${i} / ${imgNums}</div>
            <img src="<c:url value="/resource/images/certificates/${i}.jpg" />" style="width:100%" alt="certificate${i}">
            <div class="text">Certificate ${i}</div>
        </div>
    </c:forEach>

    <!-- Next and previous buttons -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div class="img-selector">
    <c:forEach var="i" begin="1" end="${imgNums}">
        <span class="dot" onclick="currentSlide(${i})"></span>
    </c:forEach>
</div>
<%@ include file="/WEB-INF/pages/footer.jsp"%>
<script>
    //call after page loaded
    showSlides(1) ;
</script>
</body>
</html>