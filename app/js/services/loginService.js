"use strict";
app.factory('loginService',function($http,$location	,sessionService){
	return {
		login: function(data,scope){
			var promise = $http.post('data/user.php',data);
			promise.then(function(msg){
				var uid = msg.data;
				if(uid) 
				{   //Success
					sessionService.set('user',uid);//key and value are the user object and the unique ID
					$location.path('/home');
				}
				else 
				{
					//error i password
					console.log(uid);
					$location.path('/login');
				}
			});
		},
		logout:function(){
			sessionService.destroy('user');
			$location.path('/login');
		},
		islogged:function(){
			//if(sessionService.get('user'))return true;
			var $checkSessionServer = $http.post('data/check_session.php');
			return $checkSessionServer;
		}
	
	}
});