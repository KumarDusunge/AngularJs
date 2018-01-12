<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body>

	<p>Click the table headers to change the sorting order:</p>

	<div ng-app="myApp" ng-controller="namesCtrl">

		<table border="1" width="100%">
			<tr>
				<th ng-click="orderByMe('Name')">Name</th>
				<th ng-click="orderByMe('country')">Country</th>
			</tr>
			<tr ng-repeat="x in names | orderBy:myOrderBy">
				<td>{{x.name}}</td>
				<td>{{x.country}}</td>
			</tr>
		</table>

	</div>

	<script>
		angular.module('myApp', []).controller('namesCtrl', function($scope) {
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
			$scope.orderByMe = function(x) {
				$scope.myOrderBy = x;
			}
		});
	</script>

</body>
</html>
