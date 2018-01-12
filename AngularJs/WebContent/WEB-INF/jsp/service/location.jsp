<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>$location</title>
</head>
<script src="angular.min.js"></script>
<body>

	<div ng-app="myApp" ng-controller="myControl">
		<p>This example uses the built-in $location service to get the
			absolute url of the page.</p>

		<p>The Url of this page is :</p>
		<h1>{{Url}}</h1>
	</div>

	<script>
		var app = angular.module("myApp", []);
		app.controller("myControl", function($scope, $location) {
			$scope.Url = $location.absUrl();
		});
	</script>

</body>
</html>