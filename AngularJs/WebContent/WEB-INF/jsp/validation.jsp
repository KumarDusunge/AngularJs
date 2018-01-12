<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script src="angular.min.js"></script>
<body>

<form ng-app="" name="myForm">
    Email:
    <input type="email" name="myEmail" ng-model="text">
    <span ng-show="myForm.myEmail.$error.email">Not a valid e-mail address</span>
</form>

<p>Enter your e-mail address in the input field. AngularJS will display an errormessage if the address is not an e-mail.</p>


</body>
</html>