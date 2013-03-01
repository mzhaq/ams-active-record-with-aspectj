<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>

<html>
<head>
    <jsp:directive.include file="/resources/ams.include"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add new people</title>
</head>
<body>
<jsp:directive.include file="/resources/ams.menu"/>
<sf:form method="post" action="createPerson" modelAttribute="person">
    <table>
        <tr>
            <td><a href="/ams/createAddress">Add a new Address</a></td>
        </tr>
        <tr>
            <td><c:if test="${!empty person.address.streetNumber}">
                <c:if test="${!empty person.address.unitNumber}">
                    <c:out value="Address: ${person.address.unitNumber} / "/>
                </c:if>
                <c:out value="${person.address.streetNumber}, "/>
                <c:out value="${person.address.streetName}, "/>
                <c:out value="${person.address.city}, "/>
                <c:out value="${person.address.state} - "/>
                <c:out value="${person.address.postCode}, "/>
                <c:out value="${person.address.country}"/>
            </c:if></td>
        </tr>
        <c:choose>
            <c:when test="${!empty person.address.streetNumber}">
                <tr>
                    <td>First Name:</td>
                    <td><sf:input path="firstName"/></td>
                    <td><sf:errors path="firstName"/></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><sf:input path="lastName"/></td>
                    <td><sf:errors path="lastName"/></td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td><sf:input path="phoneNumber"/></td>
                    <td><sf:errors path="phoneNumber"/></td>
                </tr>
                <tr>
                    <td><input id="submitPerson" class="submit" name="submit"
                               type="submit" value="Add"/></td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td>First Name:</td>
                    <td><sf:input path="firstName" disabled="true"/></td>
                    <td><sf:errors path="firstName"/></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><sf:input path="lastName" disabled="true"/></td>
                    <td><sf:errors path="lastName"/></td>
                </tr>
                <tr>
                    <td>Phone Number:</td>
                    <td><sf:input path="phoneNumber" disabled="true"/></td>
                    <td><sf:errors path="phoneNumber"/></td>
                </tr>
                <tr>
                    <td><input id="submitPerson" class="submit" name="submit"
                               type="submit" value="Disabled" disabled="disabled"/></td>
                </tr>
            </c:otherwise>
        </c:choose>
        <tr>
            <td colspan="2" align="left"><c:if test="${!empty person.id}">
                <c:out value="Name: ${person.firstName} "/>
                <c:out value="${person.lastName}, "/>
                <c:out value="Phone: ${person.phoneNumber}, "/>
                <c:out value="Address: ${person.address.unitNumber} / "/>
                <c:out value="${person.address.streetNumber}, "/>
                <c:out value="${person.address.streetName}, "/>
                <c:out value="${person.address.city}, "/>
                <c:out value="${person.address.state} - "/>
                <c:out value="${person.address.postCode}, "/>
                <c:out
                        value="${person.address.country} has been added succesfully"/>
            </c:if></td>
        </tr>
    </table>
</sf:form>
</body>
</html>