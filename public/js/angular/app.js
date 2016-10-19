var app;

app = angular.module('platanus', ['ui.router', 'restangular']);

app.config(function($stateProvider, $urlRouterProvider, RestangularProvider) {
  var crear_transaccion, cuentas, index;
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
  crear_transaccion = {
    name: 'crear_transaccion',
    url: '/transaccion/nueva',
    controller: 'TransaccionNewController',
    templateUrl: 'templates/transacciones/new.html'
  };
  $stateProvider.state('index', index);
  $stateProvider.state('cuentas', cuentas);
  $stateProvider.state('crear_transaccion', crear_transaccion);
  return $urlRouterProvider.otherwise('/');
});
