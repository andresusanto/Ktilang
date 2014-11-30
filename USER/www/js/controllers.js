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

.controller('FriendsCtrl', function($scope, Stnks, Sims) {
  $scope.stnks = Stnks.all();
  $scope.sims = Sims.all();
}) 

.controller('STNKDetailCtrl', function($scope, $stateParams, Stnks) {
  $scope.item = Stnks.get($stateParams.itemId);
})

.controller('SIMDetailCtrl', function($scope, $stateParams, Sims) {
  $scope.item = Sims.get($stateParams.itemId);
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
})

.controller('SplashCtrl', function($scope) {
})

.controller('SuratCtrl', function($scope,Stnks, Sims) {
  $scope.groups = [];
  /*for (var i=0; i<10; i++) {
    $scope.groups[i] = {
      name: i,
      items: []
    };
    for (var j=0; j<3; j++) {
      $scope.groups[i].items.push(i + '-' + j);
    }
  }*/
  $scope.groups[0]={
      name: "STNK",
      items: Stnks.all()
  };

  $scope.groups[1]={
      name: "SIM",
      items: Sims.all()
  };
   
  
  /*
   * if given group is the selected group, deselect it
   * else, select the given group
   */
  $scope.toggleGroup = function(group) {
    if ($scope.isGroupShown(group)) {
      $scope.shownGroup = null;
    } else {
      $scope.shownGroup = group;
    }
  };
  $scope.isGroupShown = function(group) {
    return $scope.shownGroup === group;
  };
  
})
.controller('subfoot', function($scope) {
  $scope.showNoSTNK = function() {
    document.getElementById('nostnk').style.display = "block";
  };
  $scope.showNoSIM = function() {
    document.getElementById('nosim').style.display = "block";
  };
  $scope.simpanNoSTNK = function(){
    // menyimpan nomor stnk
    document.getElementById('nostnk').style.display = "none";
  };
  $scope.simpanNoSIM = function(){
    // menyimpan nomor sim
    document.getElementById('nosim').style.display = "none";
  };
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



