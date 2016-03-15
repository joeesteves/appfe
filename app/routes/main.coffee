angular.module 'appuu'
.config ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: '/views/fw/sesiones/index.html'
      controller: 'SesionCtrl'
    .otherwise
      redirectTo: '/'
