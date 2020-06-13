<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon.png"/>"/>
<%--    <link rel="stylesheet" href="/resource/bootstrap/css/bootstrap.min.css">--%>
<%--    <script src="/resource/js/jquery.js"></script>--%>
<%--    <script src="/resource/bootstrap/js/bootstrap.min.js"></script>--%>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/form.css"/> ">

</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="form-container" style="margin-top: 30px; margin-bottom: 180px;">
    <div>
        <div class="panel">
            <p class="sub-title">Sign In</p>
            <div class="panel-body">
                <!-- will display after registration form registerd successfully -->
                <c:if test="${not empty registrationSuccess}">
                    <div class="error" style="color: #ff0000;">${registrationSuccess}</div>
                </c:if>
                <!-- will display after logged out successfull -->
                <c:if test="${not empty logout}">
                    <div class="error" style="color: #ff0000;">${logout}</div>
                </c:if>

                <form name="loginForm"
                      action="<c:url value="/login"/>" method="post">
                    <fieldset>
                        <br><br>
                        <div class="mid">
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail"
                                       name="username" type="email">
                            </div>
                        </div>
                        <div class="mid">
                            <div class="form-group">
                                <input class="form-control" placeholder="Password"
                                       name="password" type="password">
                            </div>
                        </div>

                        <div class="checkbox">
                            <c:if test="${not empty error}">
                                <div class="error" style="color: #ff0000">${error}</div>
                            </c:if>
                        </div>
                        <!-- Change this to a button or input when using this as a form -->
                        <div class="panel-button">
                            <button type="submit" class="btn"
                                    style="margin-right: 20px">Login
                            </button>
                            <a href="<c:url value="/customer/registration"/>"
                               class="btn">Register</a>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>