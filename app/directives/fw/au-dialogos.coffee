angular.module('appuu')
.directive 'auConfirmaBorrar', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/dialogos/confirma_borrar.html'
.directive 'auFijaEnEscritorio', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/dialogos/fija_en_escritorio.html'
.directive 'auDialogoSesiones', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/dialogos/sesiones.html'
  controller: ($scope, ResourseManager, SessionManager) ->
    SessionManager.listar_empresas()
    $scope.cambiar_empresa = (id) ->
      SessionManager.cambiar_empresa(id)
