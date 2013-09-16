'use strict'

### Controllers ###

angular.module('app.controllers', [])

.controller("HomeCtrl", [
  '$scope'

($scope) ->

  sortBy = (title) ->
    $scope.predicate = title
    $scope.reverse = not $scope.reverse

  $scope.titles = [{
      name: "Name"
      sort: null
    }, {
      name: "Adv.Invoice"
      sort: -> sortBy "invoice"
    }, {
      name: "Impressions"
      sort: -> sortBy  "impression"
      sortdirection: ""
    }, {
      name: "Clicks"
      sort: -> sortBy  "click"
    }]

  $scope.mockData = for  i in  _.range 15
      name: "KFC#{i}"
      invoice:  _.random 100000
      impression:  _.random 100000
      click: _.random 10000

])

