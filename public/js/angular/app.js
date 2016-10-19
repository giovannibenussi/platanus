var app;

app = angular.module('platanus', ['ui.router']);

app.config(function($stateProvider, $urlRouterProvider) {
  var index;
  index = {
    name: 'index',
    url: '/',
    controller: 'IndexController',
    templateUrl: 'templates/index/index.html'
  };
  $stateProvider.state('index', index);
  return $urlRouterProvider.otherwise('/');
});
