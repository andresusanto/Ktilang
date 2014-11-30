// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.services' is found in services.js
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.controllers', 'starter.services'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    // for form inputs)
    if(window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if(window.StatusBar) {
      // org.apache.cordova.statusbar required
      StatusBar.styleDefault();
    }
  });
})

.config(function($stateProvider, $urlRouterProvider) {

  // Ionic uses AngularUI Router which uses the concept of states
  // Learn more here: https://github.com/angular-ui/ui-router
  // Set up the various states which the app can be in.
  // Each state's controller can be found in controllers.js
  $stateProvider


    // setup an abstract state for the splash directive
    .state('splash', {
      url: "/splash",
      abstract: true,
      templateUrl: "templates/splash.html"
    })

    // Each splash has its own nav history stack:

    .state('splash.begin', {
      url: '/begin',
      views: {
        'splash-begin': {
          templateUrl: 'templates/splash.html',
          controller: 'SplashCtrl'
        }
      }
    })


    // setup an abstract state for the tabs directive
    .state('tab', {
      url: "/tab",
      abstract: true,
      templateUrl: "templates/tabs.html"
    })

    // Each tab has its own nav history stack:
    .state('tab.tilang', {
      url: '/tilang',
      views: {
        'tab-tilang': {
          templateUrl: 'templates/tab-tilang.html',
          controller: 'TilangCtrl'
        }
      }
    })
    
    .state('tab.tilang-detail', {
      url: '/tilang/:tilangId',
      views: {
        'tab-tilang': {
          templateUrl: 'templates/tilang-detail.html',
          controller: 'TilangDetailCtrl'
        }
      }
    })

    .state('tab.surat', {
      url: '/surat',
      views: {
        'tab-surat': {
          templateUrl: 'templates/tab-surat.html',
          controller: 'SuratCtrl'
        }
      }
    })
    .state('tab.friend-detail-stnk', {
      url: '/surat/STNK/:itemId',
      views: {
        'tab-surat': {
          templateUrl: 'templates/stnk-detail.html',
          controller: 'STNKDetailCtrl'
        }
      }
    })
    .state('tab.friend-detail-sim', {
      url: '/surat/SIM/:itemId',
      views: {
        'tab-surat': {
          templateUrl: 'templates/sim-detail.html',
          controller: 'SIMDetailCtrl'
        }
      }
    })
    .state('tab.account', {
      url: '/account',
      views: {
        'tab-account': {
          templateUrl: 'templates/tab-account.html',
          controller: 'AccountCtrl'
        }
      }
    })


    //gapake abstract
    .state('pembayaran', {
      url: "/pembayaran",
      abstract: true,
      templateUrl: "templates/pembayaran.html"
    })
    .state('pembayaran.begin', {
      url: '/begin',
      views: {
        'pembayaran-begin': {
          templateUrl: 'templates/pembayaran.html',
          controller: 'BayarCtrl'
        }
      }
    })
    ;

  // if none of the above states are matched, use this as the fallback
  //$urlRouterProvider.otherwise('/tab/dash');
  $urlRouterProvider.otherwise('/splash/begin');

});

