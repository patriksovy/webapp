<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Title</title>
    </head>
<body>
<form:form action="processForm" modelAttribute="student">
    <br></br>
    First name: <form:input path="firstName"/>
    <br></br>
<%--Last name: <form:input path="lastName"/>--%>

    <br></br>
    Country:
    <form:select path="country">
        <form:options items="${student.countryOptions}"/>
    </form:select>
    <br></br>
    Favorite Language:
    <%--    Java <form:radiobutton path='favoriteLanguage' value="Java"/>
        Python <form:radiobutton path='favoriteLanguage' value="Python"/>
        PHP <form:radiobutton path='favoriteLanguage' value="PHP"/> --%>
    <br></br>

    Favorite System:
    <%--    Windows <form:checkbox path='operatingSystem' value="Windows"/>
        Mac OS <form:checkbox path='operatingSystem' value="Mac OS"/>
        Linux <form:checkbox path='operatingSystem' value="Linux"/> --%>
    <br></br>
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>
