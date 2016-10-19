app = angular.module('platanus')

app.controller('IndexController', ['$scope', ($scope) ->
    $scope.message = 'Hello world'
]);
