angular.module 'appuu'
.config ($routeProvider) ->
  $routeProvider
  .when '/ba/usuarios/actualizar_password',
    controller: 'UsuariosCtrl'
    templateUrl: '/views/ba/usuarios/actualizar_password.html'
