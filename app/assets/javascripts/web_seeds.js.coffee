app = angular.module("Weekly", ["ngResource"])

app.config ($routeProvider) -> 
  $routeProvider.
    when('/show/:id', {controller: WebSeedShowCtrl, templateUrl: '/web_seeds/show.html'} )

app.directive 'icon', () ->
  restrict: 'A'
  replace: true
  template: '<span> novo </span>'
  link: (scope, element, attrs) ->
    element.prepend '<i class="icon-'+attrs.icon+'">'+attrs.icon+'</i> '



@WebSeedCtrl = ($scope, $resource) ->

  WebSeed = $resource("/web_seeds/:id/:vote", {id: "@id"}, {update: {method: "PUT"}, vote: {method: "PUT", params: {vote: "upvote"}}})

  $scope.initWebSeeds = ->
    WebSeed.query (serverSeeds) ->
      $scope.web_seeds = serverSeeds

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

  WebSeed = $resource("/web_seeds/:id", {id: "@id"})
  $scope.web_seed = WebSeed.get({id: $routeParams.id})