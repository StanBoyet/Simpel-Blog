angular.module('simpel-blog-ng.controllers')
  .controller 'PostRowController', ($scope) ->
    $scope.post_is_link = $scope.post.type_name == 'Link'
    $scope.post_has_author = !!$scope.post.user_name




