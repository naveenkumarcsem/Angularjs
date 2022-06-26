var myApp = angular
    .module("myModule", [])
    .controller("myController", function ($scope) {
        var country = {
            name: "United States of America",
            capital: "Washington, D.C.",
            flag: "/Images/usa-flag.png"
        };
        $scope.country = country;
    });