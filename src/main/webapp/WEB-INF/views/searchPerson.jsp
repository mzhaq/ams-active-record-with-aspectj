<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <jsp:directive.include file="/resources/ams.include"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Look for people</title>
</head>
<body>
<jsp:directive.include file="/resources/ams.menu"/>
<form method="post" action="searchPerson">
    <table>
        <tr>
            <td colspan="2"><c:out value="${message}"/></td>
        </tr>
        <tr>
            <td>First Name:</td>
            <td><input type="text" name="firstName"
                       value="<c:out value="${firstName}"/>"></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><input type="text" name="lastName"/></td>
        </tr>
        <tr>
            <td>Phone Number:</td>
            <td><input type="text" name="phoneNumber"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input id="submit" class="submit" name="submit" type="submit" value="Search"/></td>
        </tr>
    </table>
</form>

</body>
</html>