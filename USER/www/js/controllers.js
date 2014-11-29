angular.module('starter.controllers', [])

.controller('TilangCtrl', function($scope, Tilangs) {
  $scope.tilangs = Tilangs.all();
})

.controller('TilangDetailCtrl', function($scope, $stateParams, Tilangs) {
  $scope.tilang = Tilangs.get($stateParams.tilangId);
  $scope.bayar = function(e){
    window.location.href = "#/tab/tilang/"+1;
  }
})

.controller('BayarCtrl', function($scope) {
  $scope.ok = function(e){
    window.location.href = "#/tab/tilang";
  }
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
    FX.fadeIn(document.getElementById('loading_regist'), {
        duration: 300
    });
    setTimeout(function(){
      //alert("Hello");
      FX.fadeOut(document.getElementById('loading_regist'), {
          duration: 300
      });
      setTimeout(function(){
        document.getElementById('loading_regist').style.display = "none";
      },300);
    }, 3000);
    //$ionicSlideBoxDelegate.slide(3); //ke login
  }
  $scope.login = function(e) {
  	// masukkan data user
    FX.fadeIn(document.getElementById('loading_login'), {
        duration: 300
    });
    setTimeout(function(){
      //alert("Hello");
      FX.fadeOut(document.getElementById('loading_login'), {
          duration: 300
      });
      setTimeout(function(){
        document.getElementById('loading_login').style.display = "none";
        window.location.href = "#/tab/tilang";
      },300);
    }, 3000);
  }
  var FX = {
    easing: {
        linear: function(progress) {
            return progress;
        },
        quadratic: function(progress) {
            return Math.pow(progress, 2);
        },
        swing: function(progress) {
            return 0.5 - Math.cos(progress * Math.PI) / 2;
        },
        circ: function(progress) {
            return 1 - Math.sin(Math.acos(progress));
        },
        back: function(progress, x) {
            return Math.pow(progress, 2) * ((x + 1) * progress - x);
        },
        bounce: function(progress) {
            for (var a = 0, b = 1, result; 1; a += b, b /= 2) {
                if (progress >= (7 - 4 * a) / 11) {
                    return -Math.pow((11 - 6 * a - 11 * progress) / 4, 2) + Math.pow(b, 2);
                }
            }
        },
        elastic: function(progress, x) {
            return Math.pow(2, 10 * (progress - 1)) * Math.cos(20 * Math.PI * x / 3 * progress);
        }
    },
    animate: function(options) {
        var start = new Date;
        var id = setInterval(function() {
            var timePassed = new Date - start;
            var progress = timePassed / options.duration;
            if (progress > 1) {
                progress = 1;
            }
            options.progress = progress;
            var delta = options.delta(progress);
            options.step(delta);
            if (progress == 1) {
                clearInterval(id);
                options.complete();
            }
        }, options.delay || 10);
    },
    fadeOut: function(element, options) {
        var to = 1;
        this.animate({
            duration: options.duration,
            delta: function(progress) {
                progress = this.progress;
                return FX.easing.swing(progress);
            },
            complete: options.complete,
            step: function(delta) {
                element.style.opacity = to - delta;
            }
        });
    },
    fadeIn: function(element, options) {
        var to = 0;
        element.style.display = "inline-block";
        this.animate({
            duration: options.duration,
            delta: function(progress) {
                progress = this.progress;
                return FX.easing.swing(progress);
            },
            complete: options.complete,
            step: function(delta) {
                element.style.opacity = to + delta;
            }
        });
    }
  };
  window.FX = FX;
}