<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Redio Button</title>
</head>
<script src="angular.min.js"></script>
<body ng-app="">

	<form>

		<input type="radio" ng-model="check" value="Dog">Dogs <input
			type="radio" ng-model="check" value="Cat">Cats <input
			type="radio" ng-model="check" value="Car">Cars
			
	</form>

		<div ng-switch="check">
			<div ng-switch-when="Dog">
				<h1>Dogs</h1>
				<p>Welcome to a world of dogs.</p>
			</div>
			<div ng-switch-when="Cat">
				<h1>Cats</h1>
				<p>Learn from examples.</p>
			</div>
			<div ng-switch-when="Car">
				<h1>Cars</h1>
				<p>Read about cars.</p>
			</div>
		</div>
</body>
</html>