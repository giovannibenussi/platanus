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
    cuentas = {
        name: 'cuentas',
        url: '/cuentas/:id',
        controller: 'CuentasIndexController',
        templateUrl: 'templates/cuentas/index.html'
    }

    $stateProvider.state('index', index);
    $stateProvider.state('cuentas', cuentas);
    $urlRouterProvider.otherwise('/');
);
