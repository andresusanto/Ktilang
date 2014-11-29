angular.module('starter.services', [])

/**
 * A simple example service that returns some data.
 */
.factory('Stnks', function() {
  // Might use a resource here that returns a JSON array

  // Some fake testing data
  var stnks = [
    { id: 'AD2013ZY', name: 'stnk0' },
    { id: 'AD2012ZY', name: 'stnk1' }
  ];

  return {
    all: function() {
      return stnks;
    },
    get: function(sId) {
      // Simple index lookup
      var i;
      for(i=0; i<stnks.length; i++){
        if(stnks[i].id == sId) break;
      }
      return stnks[i];
    }
  }
})

.factory('Sims', function() {
  // Might use a resource here that returns a JSON array

  // Some fake testing data
  var sims = [
    { id: 0, name: 'sim0' },
    { id: 1, name: 'G.I. Joe' },
    { id: 2, name: 'Miss Frizzle' },
    { id: 3, name: 'Ash Ketchum' }
  ];

  return {
    all: function() {
      return sims;
    },
    get: function(sId) {
      // Simple index lookup
      var i;
      for(i=0; i<sims.length; i++){
        if(sims[i].id == sId) break;
      }
      return sims[i];
    }
  }
})

.factory('Tilangs', function(){
  var tilangs = [
   { id:0, nomorK: 'Ag 1230 ho', waktuT: '12:22 12 November 2014', tempatT: 'Simpang Dago', wilayahT:'Bandung Kota', nomorP:'12/1'}, 
   { id:1, nomorK: 'Ag 1210 he', waktuT: '10:12 10 Oktober 2014', tempatT: 'Simpang Lima Gumul', wilayahT:'Kediri Kota', nomorP:'12/1'}
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
