app = angular.module('platanus')

app.controller('CuentasIndexController', ['$scope', '$stateParams', 'Restangular', ($scope, $stateParams, Restangular) ->
    $scope.direccion = 'Hello world'
    Restangular.one('cuentas', $stateParams.id).get().then((cuenta) ->
        $scope.cuenta = cuenta
    )
]);
