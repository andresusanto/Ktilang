angular.module('starter.tilangs', [])


.factory('Tilangs', function(){
  var tilangs = [
   { id=:0, nomorK: 'Ag 1230 ho'}, 
   { id=:1, nomorK: 'Ag 1230 ho'}
  ];

  return {
    all: function() {
      return tilangs;
    },
    get: function(tilangId) {
      // Simple index lookup
      return tilangs[tilangId];
    }
  }

});