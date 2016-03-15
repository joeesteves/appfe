angular.module 'appuu', ['ngRoute', 'ngSanitize', 'ngResource', 'ngAnimate', 'angular-loading-bar','ng-token-auth', 'hc.marked','localytics.directives']
.config ($authProvider) ->
  $authProvider.configure
    apiUrl: 'http://localhost:3000/'
.run ($rootScope, $location, $auth, SessionManager) ->
  $rootScope.rootPath = 'http://localhost:3000/'
  chequear_sesion = () ->
    $auth.validateUser()
    .then ->
      $rootScope.logged = true
      $location.path('/mi/escritorio') if $location.path() == '/'
      SessionManager.empresa_actual()
      .then (resp) ->
        $rootScope.rs_empresa_actual = resp.data.empresa
    .catch ->
      $rootScope.logged = false
      $location.path('/') if ['/', ''].indexOf($location.path()) == -1
  $rootScope.$on "$routeChangeStart", ->
    chequear_sesion()
  $rootScope.$on "auth:password-reset-confirm-success", ->
    $location.path('/ba/usuarios/actualizar_password')
