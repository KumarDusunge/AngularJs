<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>myAngularJs</title>
</head>
<script src="angular.min.js"></script>
<body ng-app="myApp">

<div ng-controller="myController">

<h3>Data From File</h3>

<table border="1" width="100%">

	<tr>
		<th>Name</th>
		<th>City</th>
		<th>Country</th>
	</tr>
	
	<tr ng-repeat="x in data">
		<td>{{x.Name}}</td>
		<td>{{x.City | uppercase}}</td>
		<td>{{x.Country | lowercase}}</td>
	</tr>

</table>

</div>

</body>

<script>
	var app = angular.module("myApp", []).controller("myController", function($scope, $http) {
		$http.get("data").then(function(response){
				$scope.data = response.data.records;
			});
	});
</script>

</html>