app = angular.module('platanus')

app.controller('TransaccionNewController', ['$scope', 'Restangular', ($scope, Restangular) ->
    $scope.direccion = 'Hello world'
    $scope.nueva_cuenta = {
        instruccion: 'retiro'
    }
    Restangular.one('cuentas', 1234).get().then((cuenta) ->
        $scope.cuenta = cuenta
    )
    $scope.guardarTransaccion = () ->
        console.log $scope.nueva_cuenta
]);
