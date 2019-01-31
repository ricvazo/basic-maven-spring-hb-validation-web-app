<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>User form</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>

<h2>User input form</h2>
<hr>
<form:form action="${pageContext.request.contextPath}/saveUser" method="POST" modelAttribute="user">
    <table>
        <tr>
            <th>Name:</th>
            <td>
                <form:input path="name" /><br>
                <form:errors path="name" cssClass="error" />
            </td>
        </tr>
        <tr>
            <th>Email:</th>
            <td>
                <form:input path="email" /><br>
                <form:errors path="email" cssClass="error" />
            </td>
        </tr>

        <tr>
            <th>Gender:</th>
            <td>
                <form:radiobutton path="gender" value="Male" label="Male" />
                <form:radiobutton path="gender" value="Female" label="Female" /><br>
                <form:errors path="gender" cssClass="error" />
            </td>
        </tr>

        <tr>
            <th>Languages:</th>
            <td>
                <form:checkbox path="languages" value="US English" label="US English" /><br>
                <form:checkbox path="languages" value="UK English" label="UK English" /><br>
                <form:checkbox path="languages" value="Spanish" label="Spanish" /><br>
                <form:checkbox path="languages" value="Mandarin" label="Mandarin" /><br>
                <form:errors path="languages" cssClass="error" />
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <button type="submit">Submit</button>
            </td>
        </tr>
    </table>


</form:form>

</body>
</html>
