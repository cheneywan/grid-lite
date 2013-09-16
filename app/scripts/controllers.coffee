'use strict'

### Controllers ###

angular.module('app.controllers', [])

.controller("HomeCtrl", [
  '$scope'

($scope) ->

  sortBy = (id) ->
    $scope.predicate = id
    $scope.reverse = not $scope.reverse

  sortdirection = (id) ->
    return unless $scope.predicate is id
    if $scope.reverse then "⇓" else "⇑"

  $scope.titles = [{
      name: "Name"
    }, {
      name: "Adv.Invoice"
      id: "invoice"
      sort: -> sortBy @id
      direction:  -> sortdirection @id
    }, {
      name: "Impressions"
      id: "impression"
      sort: -> sortBy  @id
      direction:  -> sortdirection @id
    }, {
      name: "Clicks"
      id: "click"
      sort: -> sortBy  @id
      direction:  -> sortdirection @id
    }]

  $scope.mockData = for  i in  _.range 15
      name: "KFC#{i}"
      invoice:  _.random 100000
      impression:  _.random 100000
      click: _.random 10000

])

