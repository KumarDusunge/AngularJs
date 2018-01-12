<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom Service</title>
</head>
<script src="angular.min.js"></script>
<body>

<div ng-app="myApp" ng-controller="myController">

<p>Hexadecimal value of {{value}} is :- {{hexavalue}}</p>

</div>

<script>
	var app = angular.module('myApp', []);

	app.service('myService', function() {
	    this.myFunc = function (x) {
	        return x.toString(16);
	    }
	});
	app.controller('myController', function($scope, myService) {
		$scope.value = 16;
	  $scope.hexavalue = myService.myFunc($scope.value);
	});
</script>

</body>
</html>