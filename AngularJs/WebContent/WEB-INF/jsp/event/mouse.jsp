<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mouse Events</title>
</head>
<script src="angular.min.js"></script>
<body ng-app="myApp" ng-controller="myController">
	<form action="">
		<h3>Welcome in Mouse Event.</h3>

		<h3 ng-mousemove="move = move + 1">Ng-MouseMove :- {{move}}</h3>

		<h3 ng-mouseenter="enter = enter + 1">Ng-MouseEnter :- {{enter}}</h3>

		<h3 ng-mouseover="over = over + 1">Ng-MouseOver :- {{over}}</h3>

		<h3 ng-mouseleave="leave = leave + 1">Ng-MouseLeave :- {{leave}}</h3>

		<h3 ng-mousedown="down = down + 1">Ng-MouseDown :- {{down}}</h3>

		<h3 ng-mouseup="up = up + 1">Ng-MouseUp :- {{up}}</h3>

	</form>
</body>

<script>
	var app = angular.module("myApp", []).controller("myController",
			function($scope) {
				$scope.enter = 0;
				$scope.over = 0;
				$scope.move = 0;
				$scope.down = 0;
				$scope.up = 0;
				$scope.leave = 0;

			});
</script>

</html>