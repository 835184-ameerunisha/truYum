<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/script.js"></script>
<title>edit-menu-item</title>
<link rel="icon" href="images\truyum-logo-light.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
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
                <c:set var="menuItem" value="${menuItem}"></c:set>

                <h1>Edit Menu Item</h1>

                <form name="menuItemForm" action="EditMenuItem" method="post"
                    onsubmit="return validateMenuItemForm()">
                    <table>
                        <input type="hidden" name="id" value="${menuItem.getId()}" />
                        <tr>
                            <td><label for="title"><b>Name</b></label></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="name" value="${menuItem.getName()}"
                                id="name" placeholder="Sandwich" size="80" /></td>
                        </tr>
                    </table>
                    <table id="table1">
                        <tr>
                            <td><label for="price"><b>Price(Rs.)</b></label></td>
                            <td><label for="inStock"><b>Active</b></label></td>
                            <td></td>
                            <td><label for="dateOfLaunch"><b>Date of Launch</b></label></td>
                            <td></td>
                            <td><label for="category"><b>Category</b></label></td>
                        </tr>
                        <tr>
                            <td><input type="text" name="price" value="${menuItem.getPrice()}"
                                id="price" placeholder="97" /></td>
                            <c:choose>
                                <c:when test="${menuItem.isActive()==true}">
                                    <td><input type="radio" name="active" value="Yes"
                                        checked="checked">Yes <input type="radio"
                                        name="active" value="No">No</td>
                                </c:when>
                                <c:otherwise>
                                    <td><input type="radio" name="active" value="Yes">Yes
                                        <input type="radio" name="active" value="No"
                                        checked="checked">No</td>
                                </c:otherwise>
                            </c:choose>
                            <td></td>
                            <td><f:formatDate value="${menuItem.getDateOfLaunch()}"
                                    pattern="dd/MM/yyyy" var="dateOfLaunch" /> <input type="text"
                                value="${dateOfLaunch}" id="launch" name="dateOfLaunch"
                                placeholder="27/04/2022" /></td>
                            <td></td>
                            <td><select id="category" name="category"
                                value="${menuItem.getCategory()}">

                                    <option value="Main Course">Main Course</option>
                                    <option value="Starters">Starters</option>
                                    <option value="Main Course">Main Course</option>
                                    <option value="Desserts">Desserts</option>
                                    <option value="Drinks">Drinks</option>
                            </select></td>
                        </tr>
                        <tr>
                            <c:choose>
                                <c:when test="${menuItem.isFreeDelivery()==true}">
                                    <td><input type="checkbox" name="freeDelivery" value="yes"
                                        checked="checked">Free Delivery</td>
                                </c:when>
                                <c:otherwise>
                                    <td><input type="checkbox" name="freeDelivery" value="No">Free
                                        Delivery</td>
                                </c:otherwise>

                            </c:choose>
                            <label for="del"></label>

                        </tr>
                        <tr>
                            <td><input type="submit"
                                style="background-color: #0716a3; color: white; width: 120px; height: 30px; border: none;"
                                value="Save" name="submit"></td>
                        </tr>
                    </table>
                    <div class="footer">
                        <div class="container">Copyright&copy2019</div>
                    </div>
                </form>
</body>
</html>

