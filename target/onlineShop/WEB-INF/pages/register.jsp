<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register</title>
    <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon.png"/>" />
<%--    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/register.css"/>">--%>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/main.css"/> ">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/form.css"/> ">
</head>

<body>
<%@ include file="navbar.jsp"%>
<div class="form-container" style="margin-bottom: 19px">
    <h1 class="form-body">Register</h1>
    <div class="form-content-6 form-body">
        <div class="form-row">
            <c:url value="/customer/registration" var="url"/>
            <form:form method="post" action="${url}" modelAttribute="customer"
                       enctype="multipart/form-data">
                <div class="form-content-12">
                    <div class="form-row">
                        <div>
                            <center>User Details</center>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="firstName">First Name</form:label>
                            <form:input type="text" placeholder="Enter First Name"
                                        class="form-control" path="firstName"/>
                            <form:errors path="firstName"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="lastName">Last Name</form:label>
                            <form:input type="text" placeholder="Enter Last Name"
                                        class="form-control" path="lastName"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-content-6 form-group">
                            <form:label path="user.emailId">Email Id</form:label>
                            <form:input type="text" placeholder="Enter Email ID"
                                        class="form-control" path="user.emailId"/>
                            <form:errors path="user.emailId"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="phone">Phone Number</form:label>
                            <form:input type="text" placeholder="Enter Phone Number"
                                        class="form-control" path="phone"/>
                            <form:errors path="phone"/>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <center>Shipping Address</center>
                    </div>
                    <div class="form-group">
                        <form:label path="shippingAddress.address">Address</form:label>
                        <form:textarea type="text" placeholder="Enter Shipping Address"
                                       class="form-control" path="shippingAddress.address"/>
                    </div>
                    <div class="form-row">
                        <div class="form-content-6 form-group">
                            <form:label path="shippingAddress.city">City</form:label>
                            <form:input type="text" placeholder="Enter Current City"
                                        class="form-control" path="shippingAddress.city"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="shippingAddress.state">State</form:label>
                            <form:input type="text" placeholder="Enter your State"
                                        class="form-control" path="shippingAddress.state"/>
                            <form:errors path="shippingAddress.state"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-content-6 form-group">
                            <form:label path="shippingAddress.country">Country</form:label>
                            <form:input type="text" placeholder="Enter your country"
                                        class="form-control" path="shippingAddress.country"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="shippingAddress.zipCode">ZipCode</form:label>
                            <form:input type="text" placeholder="Enter zipcode"
                                        class="form-control" path="shippingAddress.zipCode"/>
                            <form:errors path="shippingAddress.zipCode"/>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <center>Billing Address</center>
                    </div>
                    <div class="form-group">
                        <form:label path="billingAddress.address">Address</form:label>
                        <form:textarea type="text" placeholder="Enter Billing Address"
                                       class="form-control" path="billingAddress.address"/>
                    </div>
                    <div class="form-row">
                        <div class="form-content-6 form-group">
                            <form:label path="billingAddress.city">City</form:label>
                            <form:input type="text" placeholder="Enter your City"
                                        class="form-control" path="billingAddress.city"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="billingAddress.state">State</form:label>
                            <form:input type="text" placeholder="Enter your state.."
                                        class="form-control" path="billingAddress.state"/>
                            <form:errors path="billingAddress.state"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-content-6 form-group">
                            <form:label path="billingAddress.country">Country</form:label>
                            <form:input type="text" placeholder="Enter your City"
                                        class="form-control" path="billingAddress.country"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <form:label path="billingAddress.zipCode">ZipCode</form:label>
                            <form:input type="text" placeholder="Enter Zipcode"
                                        class="form-control" path="billingAddress.zipCode"/>
                            <form:errors path="billingAddress.zipCode"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-content-6 form-group">
                            <form:label path="user.password">Password</form:label>
                            <form:input type="password" placeholder="******"
                                        class="form-control" path="user.password" id="pass"/>
                        </div>
                        <div class="form-content-6 form-group">
                            <label>Confirm Password</label> <input type="password"
                                                                   placeholder="******" class="form-control" id="confirmpass" />
                        </div>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="list-btn" onclick="return Validate()">Submit</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
<%@ include file="footer.jsp"%>

<!-- Validating Password -->
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("pass").value;
        var confirmpass = document.getElementById("confirmpass").value;
        if (password !== confirmpass) {
            alert("Password does Not Match!");
            return false;
        }
        return true;
    }
</script>
</body>
</html>