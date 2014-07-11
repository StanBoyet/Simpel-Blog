angular.module('simpel-blog-ng.routes', ['ngRoute', 'templates'])
.config ($routeProvider, $locationProvider) ->
  $routeProvider
    .when('/posts', { templateUrl: 'templates/posts.html', controller: 'PostsController' })
    .otherwise({ redirectTo: '/posts' })

  $locationProvider
    .html5Mode(false)
    .hashPrefix('!')