<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body>

	<div ng-app="myApp" ng-controller="personCtrl">

		<p>The name in uppercase :- {{ lastName | uppercase }}</p>

		<p>The name in lowercase :- {{ lastName | lowercase }}</p>

		<div>

			<p>Looping with objects:</p>

			<ul>
				<li ng-repeat="x in names | orderBy:'country'">{{ x.name + ', '
					+ x.country }}</li>
			</ul>

		</div>

		<div>

			<p>This example displays only the names containing the letter
				"i".</p>

			<ul>
				<li ng-repeat="x in names | filter : 'i'">{{ x.name }}</li>
			</ul>

		</div>

		<div>

			<p>This example displays only the names containing the letter
				which we add in textbox.</p>
			<p>
				<input type="text" ng-model="test">
			</p>

			<ul>
				<li ng-repeat="x in names | filter : test">{{ x.name + ', '+
					x.country }}</li>
			</ul>

		</div>

	</div>

	<script>
		angular.module('myApp', []).controller('personCtrl', function($scope) {
			$scope.firstName = "John", $scope.lastName = "Doe"

			$scope.names = [ {
				name : 'Jani',
				country : 'Norway'
			}, {
				name : 'Carl',
				country : 'Sweden'
			}, {
				name : 'Margareth',
				country : 'England'
			}, {
				name : 'Hege',
				country : 'Norway'
			}, {
				name : 'Joe',
				country : 'Denmark'
			}, {
				name : 'Gustav',
				country : 'Sweden'
			}, {
				name : 'Birgit',
				country : 'Denmark'
			}, {
				name : 'Mary',
				country : 'England'
			}, {
				name : 'Kai',
				country : 'Norway'
			} ];
		});
	</script>

</body>
</html>