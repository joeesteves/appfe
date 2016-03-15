angular.module 'appuu'
.controller 'PerfilCtrl', ($rootScope, $scope, $location, $http, ResourseManager) ->
  $http.get($rootScope.rootPath + 'mi/perfil').then (resp) ->
    $scope.obj = resp.data
  form = ResourseManager.form('ba/usuarios')
  index_url = '/'

  form
  .then (resp) ->
    $scope.fields = resp.data

  $scope.guardar = ->
    $http.post($rootScope.rootPath + 'mi/perfil/update', $scope.obj )
    .then () ->
      $location.path('/')
    .catch () ->
      alert('error')
