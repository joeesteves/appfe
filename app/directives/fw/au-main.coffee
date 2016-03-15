angular.module('appuu')
.directive 'auNavBar', ($auth, SessionManager) ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/navegacion/navbar.html'
  link: (scope) ->
    scope.op_activa = 'ventas'
    scope.opciones_de_menu = ['mis/operaciones/compras','mi/corcho','mi/archivo','fw/notas','fw/sesiones/cerrar']
