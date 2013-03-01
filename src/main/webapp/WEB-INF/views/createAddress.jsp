<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<html>
<head>
    <jsp:directive.include file="/resources/ams.include"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add a new address</title>
</head>
<body>
<jsp:directive.include file="/resources/ams.menu"/>
<sf:form method="post" action="createAddress" modelAttribute="address">
    <table>
        <tr>
            <td>Unit Number:</td>
            <td><sf:input path="unitNumber"/></td>
            <td><sf:errors path="unitNumber"/></td>
        </tr>
        <tr>
            <td>Street Number:</td>
            <td><sf:input path="streetNumber"/></td>
            <td><sf:errors path="streetNumber"/></td>
        </tr>
        <tr>
            <td>Street Name:</td>
            <td><sf:input path="streetName"/></td>
            <td><sf:errors path="streetName"/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><sf:input path="city"/></td>
            <td><sf:errors path="city"/></td>
        </tr>
        <tr>
            <td>Post Code:</td>
            <td><sf:input path="postCode"/></td>
            <td><sf:errors path="postCode"/></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><sf:input path="state"/></td>
            <td><sf:errors path="state"/></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><sf:input path="country"/></td>
            <td><sf:errors path="country"/></td>
        </tr>
        <tr>
            <td colspan="2" align="left"><input id="submitAddress"
                                                class="submit" name="submit" type="submit" value="Add"></td>
        </tr>
    </table>
</sf:form>
</body>
</html>