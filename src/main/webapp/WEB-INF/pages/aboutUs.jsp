<%--
  Created by IntelliJ IDEA.
  User: rujunyao
  Date: 2020-06-03
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Niko Health Care</title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon.png"/>" />
</head>
<body>
<%@ include file="navbar.jsp"%>
<div class="about-us">
    <div class="about-us-text">
        <h1>About Us<br/><br/></h1>
        <p>Our company wants to be the most reliable health care platform which connects the high quality products from India to US Europe and other parts of the world. Our main goal is to improve the health care system by providing all essential health care items at an affordable price to the rest of the world who are in need of good quality medical and sanitizing equipment. Our vision is to provide the highest quality of masks, and build long-term relationships, with the customers we serve.<br><br></p>
        <h1>Core values<br><br></h1>
        <p>We will be only manufacturing and trading in high quality medical products such as masks and sanitizer and then eventually grow out listing with more equipment such as PPE kits and 3ply masks. We are trying to get as many possible certifications for products so customers are satisfied with what they are buying. We would not like to overprice our products like some other companies are doing in times like covid19. We are trying to make it available at the lowest possible price. Niko Health care is guided by the following values.<br><br></p>
        <ul>
            <li><h3 class="span">Customer First </h3>  We strive to deliver the best products to every customer every day. The customer is the first priority in everything we do.</li>
            <li><h3 class="span">Respect </h3> We treat each individual, those we serve and those with whom we work, with the highest professionalism and dignity.</li>
            <li><h3 class="span">Innovation </h3>  We embrace change and work to improve all we do in a fiscally responsible manner.</li>
            <li><h3 class="span">Collaboration </h3>  We have an international team and we work together to foster an environment of teamwork and develop win-win solutions.</li>
        </ul>
    </div>
    <div class="about-us-img">
        <img src="https://medimaxindia.com/wp-content/uploads/2020/05/aboutus-1.png" alt="" >
    </div>

</div>
<%@ include file="footer.jsp"%>
</body>
</html>