angular.module('simpel-blog-ng.controllers')
  .controller 'PostsController', ($scope, postsResource, tagsResource) ->
    $scope.postPromise = postsResource.get()
    $scope.tagsPromise = tagsResource.get()


    $scope.createPost = ->
      postToBeCreated = $scope.freshPost
      $scope.freshPost = {}
      $scope.postPromise.posts.push postToBeCreated
      postsResource.save { post: postToBeCreated }, (resource) ->
        $.extend(postToBeCreated, resource.post)



