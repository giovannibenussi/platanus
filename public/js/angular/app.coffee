app = angular.module('platanus', [
    'ui.router',
])

app.config(($stateProvider, $urlRouterProvider) ->
    index = {
        name: 'index',
        url: '/',
        controller: 'IndexController',
        templateUrl: 'templates/index/index.html'
    }

    $stateProvider.state('index', index);
    $urlRouterProvider.otherwise('/');
);
