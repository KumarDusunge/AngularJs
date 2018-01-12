<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ng-Disabled</title>
</head>
<script src="angular.min.js"></script>
<body ng-app="">
<div>

<button ng-disabled="save">Save</button>

<input type="checkbox" ng-model="save">Ok<br><br>

{{save}}

</div>

<p ng-show="true">I am visible.</p>

<p ng-show="false">I am not visible.</p>

</body>
</html>