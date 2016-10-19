app = angular.module('platanus')

app.controller('TransaccionNewController', ['$scope', 'Restangular', ($scope, Restangular) ->
    $scope.direccion = 'Hello world'
    $scope.nueva_cuenta = {
        instruccion: 0
    }

    Transacciones = Restangular.all('transacciones')

    $scope.guardarTransaccion = () ->
        console.log $scope.nueva_cuenta
        Transacciones.post($scope.nueva_cuenta).then((response) ->
            console.log response
            console.log "Cuenta guardada correctamente"
            $scope.error = ''
            if not response.success
                if response.error == 'ACCOUNT_DOES_NOT_EXISTS'
                    $scope.error = 'La cuenta indicada no existe'
                else
                    $scope.error = 'Ha ocurrido un error al guardar la transacción'
        , () ->
            $scope.error = 'Ha ocurrido un error al guardar la transacción'
        );
]);
