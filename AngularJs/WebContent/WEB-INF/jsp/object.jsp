<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="angular.min.js"></script>
<body ng-app="">

	<!-- Div using object -->
	<div ng-init="person={firstName:'John',lastName:'Doe'}">

		<p>The name is {{ person.lastName }}</p>

		<!-- Div using array -->
		<div ng-init="points=[1,15,19,2,40]">
			<p>The third result is {{ points[2] }}</p>
		</div>

		<!-- Div using ng-repeat -->
		<div ng-init="names=['Jani','Hege','Kai']">
			<ul>
				<li ng-repeat="x in names">{{ x }}</li>
			</ul>
		</div>

		<div
			ng-init="array=[{name:'Jani',country:'Norway'},{name:'Hege',country:'Sweden'},
			{name:'Kai',country:'Denmark'}]">

			<p>Looping with objects:</p>
			<ul>
				<li ng-repeat="x in array">{{ x.name + ', ' + x.country }}</li>
			</ul>

		</div>

	</div>

</body>
</html>
