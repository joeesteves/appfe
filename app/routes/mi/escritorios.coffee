angular.module 'appuu'
.config ($routeProvider) ->
  $routeProvider
  .when '/mi/escritorio',
    controller: 'EscritorioCtrl'
    templateUrl: '/views/mi/escritorio.html'
  .when '/mi/corcho',
    controller: 'CorchoCtrl'
    templateUrl: '/views/mi/corcho.html'
  .when '/mi/archivo',
    controller: 'ArchivoCtrl'
    templateUrl: '/views/mi/archivo.html'
