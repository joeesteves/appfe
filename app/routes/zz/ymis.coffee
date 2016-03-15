angular.module 'appuu'
.config ($routeProvider) ->
  $routeProvider
  .when '/mis/:ns/:controller/',
    controller: 'ResoursesIndexController'
    templateUrl: '/views/fw/resources'
  .when '/mis/:ns/:controller/new',
    controller: 'ResoursesNewController'
    templateUrl: '/views/fw/resources/new'
  .when '/mis/:ns/:controller/:id',
    controller: 'ResoursesUpdateController'
    templateUrl: '/views/fw/resources/edit'
