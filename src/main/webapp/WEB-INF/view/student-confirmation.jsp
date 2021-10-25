<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Confirmation</title>
</head>
<body>
The student is confirmed:
<br></br>
First Name: ${student.firstName}
<br></br>
Last Name: <%-- ${student.lastName}--%>
<br></br>
Country: ${student.country}
<br></br>
Language:<%-- ${student.favoriteLanguage}--%>
<br></br>
System:<%--
<ul>
    <c:forEach var="temp" items="${student.operatingSystem}">
    <li>${temp}</li>
    </c:forEach>
</ul>--%>
<br></br>
</body>
</html>
