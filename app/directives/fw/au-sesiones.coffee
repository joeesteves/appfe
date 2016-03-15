angular.module('appuu')
.directive 'auIniciarSesion', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/sesiones/new.html'
.directive 'auNuevaCuenta', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/ba/usuarios/new.html'
.directive 'auRecordarClave', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/sesiones/recordar_clave.html'
.directive 'auSolicitudEnviada', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/fw/sesiones/solicitud_enviada.html'
.directive 'auActualizarPassword', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/ba/usuarios/actualizar_password.html'
.directive 'auPasswordActualizado', () ->
  replace: true
  restrict: 'E'
  templateUrl: '/views/ba/usuarios/password_actualizado.html'
