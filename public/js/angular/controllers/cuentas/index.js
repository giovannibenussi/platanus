var app;

app = angular.module('platanus');

app.controller('CuentasIndexController', [
  '$scope', function($scope) {
    return $scope.direccion = 'Hello world';
  }
]);
