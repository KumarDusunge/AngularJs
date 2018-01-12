<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="angular.min.js"></script>
<body ng-app="myApp">

<!-- directive: w3-test-directive -->

<script>
var app = angular.module("myApp", []);
app.directive("w3TestDirective", function() {
    return {
        restrict : "M",//E,A,C,M//def-EA
        replace : true,
        template : "<h1>Made by a directive!</h1>"
    };
});
</script>

<p><strong>Note:</strong> We've added the <strong>replace</strong> property in this example, otherwise the comment would be invisible.</p>

<p><strong>Note:</strong> You must add the value "M" to the <strong>restrict</strong> property to be able to invoke the directive from a comment.</p>

</body>
</html>
