angular.module('appuu')
.directive 'auOperacionForm', () ->
  replace: false
  restrict: 'E'
  templateUrl: '/views/mis/operaciones/form.html'
.directive 'opCondiciones', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/dialogos/condiciones.html'
  controller: ($scope, $http) ->
    $scope.get_condiciones = ->
      $http.get($rootScope.rootPath + 'mis/operaciones/compras/posibles_condiciones').then (resp) ->
        $scope.posibles_condiciones = resp.data
    $scope.set_condicion = (cuenta) ->
      $scope.op.condiciones[0] = {cuenta_id: cuenta.id, forma: '0'}
      $scope.modo_pago = cuenta.nombre
