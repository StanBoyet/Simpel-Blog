angular.module('simpel-blog-ng.services')
  .service 'tagsResource',  ($resource) ->
    $resource '/api/tags.json'