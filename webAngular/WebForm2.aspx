<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="webAngular.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="Scripts/angular.js"></script>
    <script src="Scripts/script5.js"></script>

</head>
<body ng-app="myModule">
    <div ng-controller="myController">
        <table>
            <tr>
                <td>
                    First Name
                </td>
                <td>
                    <input type="text" placeholder="Firstname"
                           ng-model="employee.firstName" />
                </td>
            </tr>
            <tr>
                <td>
                    Last Name
                </td>
                <td>
                    <input type="text" placeholder="Lastname"
                           ng-model="employee.lastName" />
                </td>
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
                    <input type="text" placeholder="Gender"
                           ng-model="employee.gender" />
                </td>
            </tr>
        </table>

        <br />

        <table>
            <tr>
                <td>
                    First Name
                </td>
                <td>
                    {{ employee.firstName }}
                </td>
            </tr>
            <tr>
                <td>
                    Last Name
                </td>
                <td>
                    {{ employee.lastName }}
                </td>
            </tr>
            <tr>
                <td>
                    Gender
                </td>
                <td>
                    {{ employee.gender }}
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
