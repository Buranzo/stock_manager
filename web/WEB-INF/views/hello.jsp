<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Hello page</title>
</head>
<body>
<form name='loginForm'
      action="<c:url value='/' />" method='POST'>

    <table>
        <tr>
            <td>User:</td>
            <td><input type='text' name='username' value="user"></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type='password' name='password' value="user"/></td>
        </tr>
        <tr>
            <td colspan='2'><input name="submit" type="submit"
                                   value="submit"/></td>
        </tr>
    </table>

    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>

</form>
</body>
</html>
