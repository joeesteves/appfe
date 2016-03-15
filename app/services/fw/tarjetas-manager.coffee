angular.module 'appuu'
.factory 'TarjetasManager', ($http) ->
  archivar: (item_id) ->
    $http.post($rootScope.rootPath + 'mis/tarjetas/archivar', {id: item_id })
  postergar: (item_id) ->
    $http.post($rootScope.rootPath + 'mis/tarjetas/postergar', {id: item_id })
  fijar: (item_id) ->
    $http.post($rootScope.rootPath + 'mis/tarjetas/fijar', {id: item_id })
  crear: (objeto_id, underscored_klass) ->
    $http.post($rootScope.rootPath + 'fw/tarjetas', {underscored_klass: underscored_klass, item_id: objeto_id })
