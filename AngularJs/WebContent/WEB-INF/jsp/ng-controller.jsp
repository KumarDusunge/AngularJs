<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AngularJs Controller</title>
</head>
<script src="angular.min.js"></script>
<body>

	<p>Try to change the names.</p>

	<div ng-app="myApp" ng-controller="myCtrl">

		First Name: <input type="text" ng-model="firstName"><br>
		Last Name: <input type="text" ng-model="lastName"><br> <br>
		Full Name: {{firstName + " " + lastName}}
		<br>
		Colling function {{fullName()}}

	</div>

	<script>
		var app = angular.module('myApp', []);
		app.controller('myCtrl', function($scope) {
			$scope.firstName = "John";
			$scope.lastName = "Doe";
			$scope.fullName = function(){
				return $scope.firstName + " " + $scope.lastName;
				};
		});
	</script>

</body>
</html>