'use strict';
app.controller('loginCtrl',['$scope','loginService',function ($scope,loginService){
	$scope.msgtxt = '';
	$scope.login = function(user){
		loginService.login(user,$scope);
	}
}]);


app.controller('loginAdminCtrl',['$scope','loginService',function ($scope,$loginService){
	$scope.msgtxt = '';
	$scope.login = function(user)
	{
		loginService.login(user,$scope);
	}
}]);


