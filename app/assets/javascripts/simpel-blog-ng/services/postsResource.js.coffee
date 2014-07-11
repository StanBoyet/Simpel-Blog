angular.module('simpel-blog-ng.services')
  .service 'postsResource',  ($resource) ->
    $resource '/api/posts.json'