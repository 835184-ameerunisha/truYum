<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>menu-items</title>
<link rel="shortcut icon" href="images\truyum-logo-light.png">
<link rel="stylesheet" href="styles\style.css">
</head>
<body>

    <table class="man">
        <div class="header">
            <div class="container">
                &nbsp;&nbsp;&nbsp;truYum&nbsp;&nbsp;&nbsp;<img src="images\truyum-logo-light.png"
                    height=20 width=20>
            </div>
            <div class="nav">
                <a href="ShowMenuItemListCustomer">Menu</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ShowCart">Cart</a>
            </div>
        </div>
        <div class="container">
            <h1 class="man">
                <b>Menu Items</b>
            </h1>
            <c:if test="${addCartStatus==true }">
                <h4 style="color: #0b8038" id="remove-cart" class="man">Item Added Into Cart
                    Successfully</h4>
            </c:if>
            <table id="table2">
                <col width="150px" />
                <col width="80px" />
                <col width="80px" />
                <col width="130px" />
                <col width="60px" />

                <tr>
                    <th align="left">Name</th>
                    <th align="center">Free Delivery</th>
                    <th align="right">Price</th>
                    <th align="center">Category</th>
                    <th align="center">Action</th>
                </tr>
                <c:forEach items="${menuItem}" var="menuItem">
                    <tr>
                        <td>${menuItem.getName()}</td>
                        <td align="center"><c:choose>
                                <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                                <c:otherwise>No</c:otherwise>
                            </c:choose></td>
                        <td align="right"><f:formatNumber type="currency" currencySymbol="Rs."
                                minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>
                        </td>

                        <td align="center">${menuItem.getCategory()}</td>


                        <td align="center"><a href="AddToCart?menuItemId=${menuItem.getId()}">Add
                                to Cart</a></td>
                    </tr>
                </c:forEach>
            </table>
            <div class="footer">
                <div class="container">Copyright&copy2019</div>
            </div>
</body>
</html>
