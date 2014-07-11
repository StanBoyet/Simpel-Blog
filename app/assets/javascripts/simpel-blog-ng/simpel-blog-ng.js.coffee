#= require ./services
#= require ./controllers
#= require ./routes
#= require_tree ./templates
#= require_self

angular.module('simpel-blog-ng', ['simpel-blog-ng.routes', 'simpel-blog-ng.controllers', 'simpel-blog-ng.services'])
  .config ($httpProvider) ->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

