'use strict';
// Declare app level module which depends on filters, and services
var app = angular.module('myApp', ['ngRoute']);
app.config(['$routeProvider', function($routeProvider) {
	$routeProvider.when('/login',{
		templateUrl:'partials/login.html',
		controller: 'loginCtrl'
	});
	$routeProvider.when('/home',{
		templateUrl: 'partials/home.html',
		controller: 'homeCtrl'
	});
	$routeProvider.when('/admin',{
		templateUrl: 'partials/loginAdmin.html',
		controller: 'loginAdminCtrl'
	});
	$routeProvider.otherwise({redirectTo:'/login'});
}]);


//Remove access to home page without autentication
app.run(function($rootScope,$location,loginService){
	var routespermission=['/home']; //Route that require login

	console.log("If there's coincidences with the routes: "+routespermission.indexOf($location.path()));
	console.log("Is logged?: "+loginService.islogged());

	$rootScope.$on('$routeChangeStart',function(){
		//When a user is in the home path
		if (routespermission.indexOf($location.path()) != -1 )
		{
			 //AND there's no session open
			var connected = loginService.islogged();
			connected.then(function(msg){
				//If there's no response from the server
				if(!msg.data){
					$location.path('/login');
				}
			});
		}

	});
});


 