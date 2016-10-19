var app;

app = angular.module('platanus');

app.controller('IndexController', [
  '$scope', function($scope) {
    return $scope.message = 'Hello world';
  }
]);
