var app;

app = angular.module('platanus');

app.controller('CuentasIndexController', [
  '$scope', '$stateParams', 'Restangular', function($scope, $stateParams, Restangular) {
    $scope.direccion = 'Hello world';
    return Restangular.one('cuentas', $stateParams.id).get().then(function(cuenta) {
      return $scope.cuenta = cuenta;
    });
  }
]);
