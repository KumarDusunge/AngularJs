<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AngularJs Ng-Model Example</title>
</head>
<script src="angular.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script> -->
<body ng-app="">

	<div>
		<p>
			Name : <input type="text" ng-model="name">
		</p>
		
		<h1>Hello {{name}}</h1>
		<!-- <h1>Hello {{name}}</h1> -->
		
		 <p ng-bind="name"></p>
		
	</div>

</body>
</html>