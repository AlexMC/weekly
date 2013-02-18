app = angular.module("Weekly", ["ngResource"])

app.config ($routeProvider) -> 
  $routeProvider.
    when('/show/:id', {controller: WebSeedShowCtrl, templateUrl: '/web_seeds/show.html'} )


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
    $scope.web_seeds = WebSeed.query()


@WebSeedShowCtrl = ($scope, $resource, $routeParams) ->

  console.log "hello"

  WebSeed = $resource("/web_seeds/:id", {id: "@id"})

  WebSeed.get({id: $routeParams.id})