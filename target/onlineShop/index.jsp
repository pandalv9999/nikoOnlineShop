<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Niko Health Care</title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/WEB-INF/resource/images/favicon.png"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>">
</head>
<body>
<%@ include file="/WEB-INF/pages/navbar.jsp"%>
<%--<%@ include file="WEB-INF/pages/slider.jsp"%>--%>
<section class="product-grid">

    <c:forEach items="${products}" var="prod">
        <div class="product-container">
            <img src="<c:url value="/resource/images/${prod.id}/main.png"/> " class="product-image" alt="${prod.productName}" width="350px" height="350px">
            <div class="product-text">
                <p class="product-title">${prod.productName}</p>
                <p class="product-description">${prod.productDescription.substring(13, 213)}...</p>
                <a href="#">Read More</a>
            </div>
        </div>
    </c:forEach>

    <%--    <div class="product-container">--%>
    <%--        <img src="https://hongkongliving.b-cdn.net/wp-content/uploads/2020/02/Man-putting-on-a-surgical-mask.jpg" class="product-image" alt="mask" width="350px" height="350px">--%>
    <%--        <div class="product-text">--%>
    <%--            <p class="product-title">3 PLY FACE MASKS</p>--%>
    <%--            <p class="product-description">Three Ply face mask contains three layers with each layer has very specific role.The outer layer is hydrophobic layer that prevents from water blood...</p>--%>
    <%--            <a href="#">Read More</a>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <%--    <div class="product-container">--%>
    <%--        <img src="https://hongkongliving.b-cdn.net/wp-content/uploads/2020/02/Man-putting-on-a-surgical-mask.jpg" class="product-image" alt="mask" width="350px" height="350px">--%>
    <%--        <div class="product-text">--%>
    <%--            <p class="product-title">3 PLY FACE MASKS</p>--%>
    <%--            <p class="product-description">Three Ply face mask contains three layers with each layer has very specific role.The outer layer is hydrophobic layer that prevents from water blood</p>--%>
    <%--            <a href="#">Read More</a>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <%--    <div class="product-container">--%>
    <%--        <img src="https://hongkongliving.b-cdn.net/wp-content/uploads/2020/02/Man-putting-on-a-surgical-mask.jpg" class="product-image" alt="mask" width="350px" height="350px">--%>
    <%--        <div class="product-text">--%>
    <%--            <p class="product-title">3 PLY FACE MASKS</p>--%>
    <%--            <p class="product-description">Three Ply face mask contains three layers with each layer has very specific role.The outer layer is hydrophobic layer that prevents from water blood</p>--%>
    <%--            <a href="#">Read More</a>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <%--    <div class="product-container">--%>
    <%--        <img src="https://hongkongliving.b-cdn.net/wp-content/uploads/2020/02/Man-putting-on-a-surgical-mask.jpg" class="product-image" alt="mask" width="350px" height="350px">--%>
    <%--        <div class="product-text">--%>
    <%--            <p class="product-title">3 PLY FACE MASKS</p>--%>
    <%--            <p class="product-description">Three Ply face mask contains three layers with each layer has very specific role.The outer layer is hydrophobic layer that prevents from water blood</p>--%>
    <%--            <a href="#">Read More</a>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <%--    <div class="product-container">--%>
    <%--        <img src="https://hongkongliving.b-cdn.net/wp-content/uploads/2020/02/Man-putting-on-a-surgical-mask.jpg" class="product-image" alt="mask" width="350" height="350">--%>
    <%--        <div class="product-text">--%>
    <%--            <p class="product-title">3 PLY FACE MASKS</p>--%>
    <%--            <p class="product-description">Three Ply face mask contains three layers with each layer has very specific role.The outer layer is hydrophobic layer that prevents from water blood</p>--%>
    <%--            <a href="#">Read More</a>--%>
    <%--        </div>--%>
    <%--    </div>--%>



</section>
<%@ include file="/WEB-INF/pages/footer.jsp"%>
</body>
</html>