angular.module('starter.controllers', [])

.controller('TilangCtrl', function($scope, Tilangs) {
  $scope.tilangs = Tilangs.all();
})

.controller('TilangDetailCtrl', function($scope, $stateParams, Tilangs) {
  $scope.tilang = Tilangs.get($stateParams.tilangId);
})

.controller('FriendsCtrl', function($scope, Friends) {
  $scope.friends = Friends.all();
})

.controller('FriendDetailCtrl', function($scope, $stateParams, Friends) {
  $scope.friend = Friends.get($stateParams.friendId);
})

.controller('AccountCtrl', function($scope) {
})

.controller('SplashCtrl', function($scope) {
});

function slideCtrl($scope, $ionicSlideBoxDelegate) {
  $scope.nextSlide = function() {
    $ionicSlideBoxDelegate.next();
  }
  $scope.toSlide = function(e) {
    $ionicSlideBoxDelegate.slide(e);
  }
  $scope.submit = function(e) {
  	// masukkan data user
    $ionicSlideBoxDelegate.slide(3);
  }
  $scope.login = function(e) {
  	// masukkan data user
    window.location.href = "#/tab/tilang";
  }
}
