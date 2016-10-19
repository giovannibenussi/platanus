var app;

app = angular.module('platanus', ['ui.router']);

app.config(function($stateProvider, $urlRouterProvider) {
  var cuentas, index;
  index = {
    name: 'index',
    url: '/',
    controller: 'IndexController',
    templateUrl: 'templates/index/index.html'
  };
  cuentas = {
    name: 'cuentas',
    url: '/cuentas/:id',
    controller: 'CuentasIndexController',
    templateUrl: 'templates/cuentas/index.html'
  };
  $stateProvider.state('index', index);
  $stateProvider.state('cuentas', cuentas);
  return $urlRouterProvider.otherwise('/');
});
