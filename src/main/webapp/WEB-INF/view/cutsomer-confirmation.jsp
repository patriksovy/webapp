<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>
The student is confirmed:
<br></br>
First Name: ${customer.firstName}
<br></br>
Last Name: ${customer.lastName}
<br></br>
Free passes: ${customer.freePasses}
<br></br>
Postal code: ${customer.postalCode}
</body>
</html>