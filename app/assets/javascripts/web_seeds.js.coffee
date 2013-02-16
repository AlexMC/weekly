app = angular.module("Weekly", ["ngResource"])

@WebSeedCtrl = ($scope, $resource) ->

  WebSeed = $resource("/web_seeds/:id", {id: "@id"}, {update: {method: "PUT"}})

  $scope.web_seeds = WebSeed.query()

  # $scope.web_seeds = [
  #   "http://www.outitude.com",
  #   "http://www.abola.pt",
  #   "http://www.slbenfica.com"
  # ]

  $scope.addWebSeed = ->
    $scope.web_seeds.push($scope.web_seed.url)