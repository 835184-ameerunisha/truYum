<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>admin-page</title>
<link rel="shortcut icon" href="images\truyum-logo-light.png">
<link rel="stylesheet" href="styles\style.css">
</head>
<body link="white">
    <table class="man">
        <div class="header">
            <div class="container">
                &nbsp;&nbsp;&nbsptruYum&nbsp;&nbsp;&nbsp;<img src="images\truyum-logo-light.png"
                    height=20 width=20>
            </div>

            <div class="nav">
                <a href="ShowMenuItemListAdmin"><b>Menu</b></a>
                </nav>
            </div>
        </div>
        <div class="container">
            <p>
                <font size="18" class="man"><b>Menu Items</b></font>
            </p>
            <tr>
                <td></td>
            </tr>
            <tr>
                <th width=100 align="left"><b>Name</b>
                <th width=90 align="right"><b>Price</b>
                <th width=50 align="center"><b>Active</b>
                <th width=80 align="center"><b>Date of Launch</b>
                <th width=90 align="center"><b>Category</b>
                <th width=80 align="center"><b>Free Delivery</b>
                <th width=30 align="center"><b>Action</b></th>
            </tr>
            <c:forEach items="${menuItem}" var="menuItem">
                <tr>
                    <td>${menuItem.getName()}</td>
                    <td align="right"><f:formatNumber type="currency" currencySymbol="Rs."
                            minFractionDigits="2" value="${menuItem.getPrice()}"></f:formatNumber></td>
                    <td align="center"><c:choose>
                            <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                            <c:otherwise>No</c:otherwise>
                        </c:choose></td>
                    <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                            pattern="dd/MM/yyyy"></f:formatDate></td>
                    <td align="center">${menuItem.getCategory()}</td>
                    <td align="center"><c:choose>
                            <c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
                            <c:otherwise>No</c:otherwise>
                        </c:choose></td>
                    <td align="center"><a
                        href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>
                </tr>
            </c:forEach>
    </table>
    <div class="footer">
        <div class="container">Copyright&copy2019</div>
    </div>
</body>
</html>
