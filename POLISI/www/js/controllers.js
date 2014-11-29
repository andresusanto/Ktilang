angular.module('starter.controllers', [])

.controller('DashCtrl', function($scope) {
})

.controller('FriendsCtrl', function($scope, Friends) {
  $scope.friends = Friends.all();
})

.controller('FriendDetailCtrl', function($scope, $stateParams, Friends) {
  $scope.friend = Friends.get($stateParams.friendId);
})

.controller('AccountCtrl', function($scope) {
  $scope.gpass = function(){
      document.getElementById('inputPass').style.display = "block";
      document.getElementById('submitPass').style.display = "block";
      document.getElementById('gantiPass').style.display = "none";
  };
  $scope.spass = function(){
      document.getElementById('inputPass').style.display = "none";
      document.getElementById('submitPass').style.display = "none";
      document.getElementById('gantiPass').style.display = "block";
  };
  $scope.ghp = function(){
      document.getElementById('inputHP').style.display = "block";
      document.getElementById('submitHP').style.display = "block";
      document.getElementById('gantiHP').style.display = "none";
  };
  $scope.shp = function(){
      document.getElementById('inputHP').style.display = "none";
      document.getElementById('submitHP').style.display = "none";
      document.getElementById('gantiHP').style.display = "block";
  };
});
