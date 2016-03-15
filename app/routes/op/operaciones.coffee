angular.module 'appuu'
.config ($routeProvider) ->
  $routeProvider
  .when '/mis/operaciones/compras/new',
    controller: 'OperacionesCtrl'
    templateUrl: 'mis/operaciones/new.html'
  .when '/mis/operaciones/compras/:id',
    controller: 'OperacionesCtrl'
    templateUrl: 'mis/operaciones/edit.html'
  .when '/mis/operaciones/ventas/new',
    controller: 'OperacionesCtrl'
    templateUrl: 'mis/operaciones/new.html'
  .when '/mis/operaciones/ventas/:id',
    controller: 'OperacionesCtrl'
    templateUrl: 'mis/operaciones/edit.html'
