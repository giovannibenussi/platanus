var app;

app = angular.module('platanus');

app.controller('TransaccionNewController', [
  '$scope', 'Restangular', function($scope, Restangular) {
    $scope.direccion = 'Hello world';
    $scope.nueva_cuenta = {
      instruccion: 'retiro'
    };
    Restangular.one('cuentas', 1234).get().then(function(cuenta) {
      return $scope.cuenta = cuenta;
    });
    return $scope.guardarTransaccion = function() {
      return console.log($scope.nueva_cuenta);
    };
  }
]);
