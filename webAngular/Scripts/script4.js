/// reference path="angular.js"/>
var myApp = angular
    .module("myModule", [])
    .controller("myController", function ($scope) {
        var employee = {
            firstName: "Ben",
            lastName: "Hastings",
            gender: "Male"
        };

        $scope.employee = employee;
    });