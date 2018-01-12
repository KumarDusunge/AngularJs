<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>$interval</title>
</head>
<script src="angular.min.js"></script>
<body>

<div ng-app="myApp" ng-controller="myController">
<p>Timeming : </p>
<h1>{{time}}</h1>
</div>

<script>
	var app = angular.module("myApp", []);
	app.controller("myController", function($scope, $interval) {
		$scope.time = new Date().toLocaleTimeString();
		$interval(function(){
			$scope.time = new Date().toLocaleTimeString();
			},1000);
	})
</script>

</body>
</html>