app = angular.module('platanus')

app.controller('CuentasIndexController', ['$scope', 'Restangular', ($scope, Restangular) ->
    $scope.direccion = 'Hello world'
    Restangular.one('cuentas', 1234).get().then((cuenta) ->
        $scope.cuenta = cuenta
    )
]);
