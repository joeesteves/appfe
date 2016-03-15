angular.module 'appuu'
.config ($routeProvider) ->
  $routeProvider
  .when '/:ns/:controller/',
    controller: 'ResoursesIndexController'
    templateUrl: '/views/fw/resources.html'
  .when '/:ns/:controller/new',
    controller: 'ResoursesNewController'
    templateUrl: '/views/fw/resources/new.html'
  .when '/:ns/:controller/:id',
    controller: 'ResoursesUpdateController'
    templateUrl: '/views/fw/resources/edit.html'
