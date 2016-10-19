var app;

app = angular.module('platanus');

app.controller('CuentasIndexController', [
  '$scope', 'Restangular', function($scope, Restangular) {
    $scope.direccion = 'Hello world';
    return Restangular.one('cuentas', 1234).get().then(function(cuenta) {
      return $scope.cuenta = cuenta;
    });
  }
]);
