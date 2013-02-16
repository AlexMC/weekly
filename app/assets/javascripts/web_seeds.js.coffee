app = angular.module("Weekly", ["ngResource"])

@WebSeedCtrl = ($scope, $resource) ->

  WebSeed = $resource("/web_seeds/:id/:vote", {id: "@id"}, {update: {method: "PUT"}, vote: {method: "PUT", params: {vote: "upvote"}}})

  $scope.web_seeds = WebSeed.query()

  $scope.addWebSeed = ->
    web_seed = WebSeed.save($scope.newWebSeed)
    $scope.web_seeds.push(web_seed)
    $scope.newWebSeed = {}

  $scope.deleteWebSeed = (web_seed) ->
    WebSeed.delete(web_seed)
    $scope.web_seeds = WebSeed.query()

  $scope.vote = (web_seed) ->
    WebSeed.vote(web_seed)