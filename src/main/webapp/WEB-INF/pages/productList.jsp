<%--
  Created by IntelliJ IDEA.
  User: rujunyao
  Date: 2020-06-05
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="navbar.jsp"%>
<section>
    <p class="sub-title">Product List</p>
    <div class="product-list">
        <c:forEach items="${products}" var="prod">
            <div class="product-container product-list-container">
                <div class="product-image">
                    <img src="<c:url value="/resource/images/${prod.id}/main.png"/> " alt="product-image" width="200px" height="200px">
                </div>
                <div>
                    <div class="product-list-text">
                        <p class="product-title">${prod.productName}<br><br></p>
                        <ul>
                            <li>Product ID: ${prod.id}</li>
                            <li>Product Category: ${prod.productCategory}</li>
                            <li>Product Manufacturer: ${prod.productManufacturer}</li>
                        </ul>
                    </div>
                </div>
                <div class="product-ops">
                    <div class="price-container">
                        <span class="product-price">$${prod.productPrice}</span><span class="product-unit"> / ${prod.unit}</span>
                    </div>
                    <c:if test="${prod.unitStock > 0}">
                        <div class="status"><p>In stock</p></div>
                    </c:if>
                    <c:if test="${prod.unitStock == 0}">
                        <div class="status"><p>Out Of Stock</p></div>
                    </c:if>
                    <a href=""><div class="list-btn">Add to Card</div></a>
                <a href="/onlineShop/getProductById/${prod.id}"><div class="list-btn">Detail</div></a>
                </div>
            </div>
        </c:forEach>>

    </div>

</section>
<%@ include file="footer.jsp"%>
</body>
</html>
