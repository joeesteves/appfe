angular.module('appuu')
.directive 'auNotificaErrores', ($rootScope) ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/notificaciones/errores.html'
