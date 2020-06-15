<%--
  Created by IntelliJ IDEA.
  User: rujunyao
  Date: 2020-06-05
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>${product.productName}</title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon.png"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/photoGalleryProduct.css"/> ">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="<c:url value="/resource/js/photoGallery.js"/>"></script>
    <script src="<c:url value="/resource/js/apis.js"/>"></script>
    <script>
        function validateQuantity(productId, unitInStock) {

            var quantity = document.getElementById('productQuantity').value;
            if (${pageContext.request.userPrincipal.name == null}) {
                document.getElementById('errMsg' + productId).innerText = "";
                document.getElementById('errMsg').innerText += "Please login first";
                return;
            }
            if (quantity === "" || quantity === "0") {
                document.getElementById('errMsg'+ productId).innerText = "";
                document.getElementById('errMsg'+ productId).innerText += "Please enter a number!";
                return;
            }
            if (quantity > unitInStock) {
                document.getElementById('errMsg'+ productId).innerText = "";
                document.getElementById('errMsg'+ productId).innerText += "Quantity exceeds units in stock!";
                return;
            }
            document.getElementById('errMsg'+ productId).innerText = "";
            addToCart(productId, quantity);
        }
    </script>
</head>
<body>
<%@ include file="navbar.jsp"%>
<p class="sub-title">${product.productName}</p>
<div class="product">
    <div class = "summary">${summary}</div>
        <div class="pictures-and-description">
        <div class="pictures">
            <div class="slideshow-container-product">
                <c:forEach var="i" begin="1" end="${product.pages}">
                    <div class="mySlides fade">
                        <div class="numbertext">${i} / ${product.pages}</div>
                        <img src="<c:url value="/resource/images/${product.id}/${i}.jpg" />" width="500px" length="500px" alt="page${i}">
                        <div class="text">Picture ${i}</div>
                    </div>
                </c:forEach>
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>
            <div class="img-selector">
                <c:forEach var="i" begin="1" end="${product.pages}">
                    <span class="dot" onclick="currentSlide(${i})"></span>
                </c:forEach>
            </div>
        </div>

        <div class="description">
            <table>
                <thead>
                <tr class="table-header">Product Specifications</tr>
                </thead>
                <tbody>
                <tr>
                    <td class="key">Manufacturer</td>
                    <td class="value">${product.productManufacturer}</td>
                </tr>
                <tr>
                    <td class="key">Category</td>
                    <td class="value">${product.productCategory}</td>
                </tr>
                <c:forEach items="${descriptions}" var="item">
                        <tr>
                            <td class="key">${item.key}</td>
                            <td class="value">${item.value}</td>
                        </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="product-ops-detail">
                <div class="price-container">
                    <span class="product-price">$${product.productPrice}</span><span class="product-unit"> / ${product.unit}</span>
                    <div class="status"><p>Unit in stock: ${product.unitStock}</p></div>
                </div>
                <div>
                    <span>Quantity: </span>
                    <input type="number" id="productQuantity" style="width: 60px">
                    <button class="list-btn" onclick="validateQuantity(${product.id}, ${product.unitStock})" style="height: 30px; margin-left: 30px">Add to Cart</button>
                </div>


            </div>
            <span id="errMsg${product.id}" style="color: #ff0000"></span>
        </div>
        </div>

        </div>
    </div>
    <div class="feature">
        <div>
            <h1>Features<br><br></h1>
            <ul>
                <c:forEach items="${features}" var="item">
                    <li>${item}</li>
                </c:forEach>
            </ul>
        </div>
        <img src="<c:url value="/resource/images/${product.id}/feature.png" />" alt="img" width="200px" height="200px"/>
    </div>
</div>
<%@ include file="footer.jsp"%>
<script>
    //call after page loaded
    showSlides(1) ;
</script>
</body>
</html>
