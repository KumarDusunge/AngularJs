<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="angular.min.js"></script>
<body>

	<p>Make your own filters.</p>
	<p>This filter, called "myFormat", will uppercase every other
		character.</p>

	<ul ng-app="myApp" ng-controller="namesCtrl">
		<li ng-repeat="x in names">{{x | myFormat}}</li>
	</ul>

	<script>
		var app = angular.module('myApp', []);
		app.filter('myFormat', function() {
			return function(x) {
				var i, c, txt = "";
				for (i = 0; i < x.length; i++) {
					c = x[i];
					if (i % 2 == 0) {
						c = c.toUpperCase();
					}
					txt += c;
				}
				return txt;
			};
		});
		app.controller('namesCtrl', function($scope) {
			$scope.names = [ 'Jani', 'Carl', 'Margareth', 'Hege', 'Joe',
					'Gustav', 'Birgit', 'Mary', 'Kai' ];
		});
	</script>

</body>
</html>
