app = angular.module("Weekly", ["ngResource"])

@WebSeedCtrl = ($scope, $resource) ->

  WebSeed = $resource("/web_seeds/:id", {id: "@id"}, {update: {method: "PUT"}})

  $scope.web_seeds = WebSeed.query()

  $scope.addWebSeed = ->
    web_seed = WebSeed.save($scope.newWebSeed)
    $scope.web_seeds.push(web_seed)
    $scope.newWebSeed = {}