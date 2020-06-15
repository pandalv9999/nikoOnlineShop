<%--
  Created by IntelliJ IDEA.
  User: rujunyao
  Date: 2020-06-03
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/> ">
<%--    <link rel="icon" type="image/x-icon" href="<c:url value="/WEB-INF/resource/images/favicon.png"/>"/>--%>
<%--    <link rel="stylesheet" type="text/css" href="<c:url value="/WEB-INF/resource/bootstrap/css/bootstrap.min.css"/>">--%>
    <script src="<c:url value="/resource/js/jquery.js"/>"></script>
<%--    <script src="<c:url value="/WEB-INF/resource/bootstrap/js/bootstrap.min.js"/>" type="javascript"></script>--%>
    <script src="<c:url value="/resource/js/apis.js"/>"></script>

</head>

<body>
<nav class="navbar navbar-inverse">
    <div  class="container-fluid">
        <div class="logo">
            <img src="<c:url value="/resource/images/niko.png" /> " height="130px" alt="logo-image"/>
        </div>
        <div class="padding"></div>

        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-left">
                <li><a href=" <c:url value="/index" />">Home</a></li>
                <li><a href=" <c:url value="/getAllProducts" />">Products</a></li>
                <li><a href=" <c:url value="/aboutus" />">About Us</a></li>
            </ul>
            <ul class="nav navbar-right">
                <c:if test="${!empty pageContext.request.userPrincipal.name}">
                    <li><a href="<c:url value="/index" />"><span class=""></span>Welcome <span id="result"></span></a></li>
                    <security:authorize access="hasRole('ROLE_ADMIN')">
                        <li><a href=" <c:url value="/admin/product/addProduct" />"> Manage Site</a></li>
                    </security:authorize>
                    <li><a href="<c:url value="/cart/getCartById" />"><span class=""></span> Cart</a></li>
                    <li><a href="<c:url value="/settings/getSettingById" />"><span class=""></span> Setting</a></li>
                    <li><a href="<c:url value="/logout" />"><span class=""></span> Logout</a></li>
                </c:if>
            </ul>
            <c:if test="${pageContext.request.userPrincipal.name==null}">
                <ul class="nav navbar-right">
                    <li><a href="<c:url value="/login" />"><span class=""></span> My Cart</a></li>
                    <li><a href="<c:url value="/customer/registration" />"><span class=""></span> SignUp</a></li>
                    <li><a href="<c:url value="/login" />"><span class=""></span> Login</a></li>
                </ul>
            </c:if>
        </div>
    </div>
</nav>
<script>
    //call after page loaded
    loadName('${pageContext.request.userPrincipal.name}')
</script>
</body>
</html>