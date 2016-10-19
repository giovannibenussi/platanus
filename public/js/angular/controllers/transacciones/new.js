var app;

app = angular.module('platanus');

app.controller('TransaccionNewController', [
  '$scope', 'Restangular', function($scope, Restangular) {
    var Transacciones;
    $scope.direccion = 'Hello world';
    $scope.nueva_cuenta = {
      instruccion: 0
    };
    Transacciones = Restangular.all('transacciones');
    return $scope.guardarTransaccion = function() {
      console.log($scope.nueva_cuenta);
      return Transacciones.post($scope.nueva_cuenta).then(function(response) {
        console.log(response);
        console.log("Cuenta guardada correctamente");
        $scope.error = '';
        if (!response.success) {
          if (response.error === 'ACCOUNT_DOES_NOT_EXISTS') {
            return $scope.error = 'La cuenta indicada no existe';
          } else {
            return $scope.error = 'Ha ocurrido un error al guardar la transacción';
          }
        }
      }, function() {
        return $scope.error = 'Ha ocurrido un error al guardar la transacción';
      });
    };
  }
]);
