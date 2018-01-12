<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Angular select drop-down</title>
</head>
<script src="angular.min.js"></script>
<body>

	<div ng-app="myApp" ng-controller="myController">

		Select option <select ng-model="mySelect" ng-options="x for x in name"></select>

	</div>

	<script>
		var app = angular.module("myApp", []).controller("myController",
				function($scope) {
					$scope.name = [ 'Ram', 'Sham', 'Om' ];
				});
	</script>

</body>
</html>