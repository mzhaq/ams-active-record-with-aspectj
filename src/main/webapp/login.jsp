<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:directive.include file="/resources/ams.include"/>
    <title>Login</title>
</head>
<body>
<c:if test="${not empty param.error}">
    <font color="red">
        Login error. <br/>
        Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
    </font>
</c:if>

<form method="post" action="<c:url value="/j_spring_security_check" />">
    <table>
        <tr>
            <td align="right">Username</td>
            <td><input type="text" name="j_username"/></td>
        </tr>
        <tr>
            <td align="right">Password</td>
            <td><input type="password" name="j_password"/></td>
        </tr>
        <tr>
            <td align="right">Remember me</td>
            <td><input type="checkbox" name="_spring_security_remember_me"/></td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <input class="submit" name="submit" type="submit" value="Login"/>
                <input class="submit" name="submit" type="reset" value="Reset"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>