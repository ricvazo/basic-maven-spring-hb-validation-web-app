<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User success</title>
</head>
<body>
<h2>User success</h2>
<hr>
<table>
    <tr>
        <th>Name:</th>
        <td>${user.name}</td>
    </tr>
    <tr>
        <th>Email:</th>
        <td>${user.email}</td>
    </tr>
    <tr>
        <th>Gender:</th>
        <td>${user.gender}</td>
    </tr>
    <tr>
        <th>Languages:</th>
        <td>
            <ul>
                <c:forEach var="language" items="${user.languages}">
                    <li>${language}</li>
                </c:forEach>
            </ul>
        </td>
    </tr>

</table>
</body>
</html>
