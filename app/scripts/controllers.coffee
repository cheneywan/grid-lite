'use strict'

### Controllers ###

angular.module('app.controllers', [])

.controller("HomeCtrl", [
  '$scope'

($scope) ->

  $scope.sortBy = (title) ->
    if $scope.predicate is title.id
      $scope.reverse = not $scope.reverse
    else
      $scope.predicate = title.id
      $scope.reverse = true

  $scope.titles = [{
      name: "Name"
    }, {
      id: "invoice"
      name: "Adv.Invoice"
    }, {
      id: "impression"
      name: "Impressions"
    }, {
      id: "click"
      name: "Clicks"
    }]

  $scope.mockData = for  i in  _.range 15
      name: "KFC#{i}"
      invoice:  _.random 100000
      impression:  _.random 100000
      click: _.random 10000

])

