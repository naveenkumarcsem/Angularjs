<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webAngular.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myModule">
<head runat="server">
    
    <title></title>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/script7.js"></script>
  

    
</head>
<body>
    <div ng-controller="myController">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Likes</th>
                    <th>Dislikes</th>
                    <th>Like/Dislike</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="technology in technologies">
                    <td> {{ technology.name }} </td>
                    <td style="text-align:center"> {{ technology.likes }} </td>
                    <td style="text-align:center"> {{ technology.dislikes }} </td>
                    <td>
                        <input type="button" ng-click="incrementLikes(technology)" value="Like" />
                        <input type="button" ng-click="incrementDislikes(technology)" value="Dislike" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
    
</html>
