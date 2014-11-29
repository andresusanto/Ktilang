angular.module('starter.services', [])

/**
 * A simple example service that returns some data.
 */
.factory('Friends', function() {
  // Might use a resource here that returns a JSON array

  // Some fake testing data
  var friends = [
    { id: 0, name: 'Scruff McGruff' },
    { id: 1, name: 'G.I. Joe' },
    { id: 2, name: 'Miss Frizzle' },
    { id: 3, name: 'Ash Ketchum' }
  ];

  return {
    all: function() {
      return friends;
    },
    get: function(friendId) {
      // Simple index lookup
      return friends[friendId];
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
