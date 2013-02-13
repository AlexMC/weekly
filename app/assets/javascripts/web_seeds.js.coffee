@WebSeedCtrl = ($scope) ->
  $scope.WebSeeds = [
    "http://slbenfica.pt",
    "http://screencasts.com",
    "http://www.weareswat.com"
  ]

  $scope.addWebSeed = ->
    $scope.WebSeeds.push($scope.WebSeed.url)