<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>$timeout</title>
</head>
<script src="angular.min.js"></script>
<body>

<div ng-app="myApp", ng-controller="myController">

<h1>{{msg}}</h1>

</div>

<script>
	var app = angular.module("myApp", []);
	app.controller("myController", function($scope, $timeout) {
		$scope.msg = "Hello";
		$timeout(function() {
			$scope.msg = "How are you Today?";
		},2000);
	});
</script>

</body>
</html>