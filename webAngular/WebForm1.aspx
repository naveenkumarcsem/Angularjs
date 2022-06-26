<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webAngular.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" ng-app="myModule">
<head runat="server">
    
    <title></title>
    <script src="Scripts/angular.js"></script>
    
    <script src="Scripts/Script.js"></script>
    <script src="Scripts/script2.js"></script>
    <script src="Scripts/Script3.js"></script>
    <script src="Scripts/script4.js"></script>
    <script src="Scripts/script6.js"></script>
    <script src="Scripts/script7.js"></script>
     <script src="Scripts/script8.js"></script>
      <script src="Scripts/script9.js"></script>
    <script src="Scripts/script10.js"></script>
    <script src="Scripts/script11.js"></script>
    <script src="Scripts/script12.js"></script>
    <script src="Scripts/filter.js"></script>

    <script src="Scripts/script13.js"></script>
    <script src="Scripts/filter2.js"></script>
     <script src="Scripts/script14.js"></script>
    <script src="Scripts/script15.js"></script>
    <script src="Scripts/script16.js"></script>
    <style>
       
        table {
    border-collapse: collapse;
    font-family:Arial;
}

td {
    border: 1px solid black;
    padding: 5px;
}

th {
    border: 1px solid black;
    padding: 5px;
    text-align: left;
}

.arrow-up {
     width: 0;
     height: 0;
     border-left: 5px solid transparent;
     border-right: 5px solid transparent;
     border-bottom: 10px solid black;
     display:inline-block;
}

/*This class displays the DOWN arrow*/
.arrow-down {
     width: 0;
     height: 0;
     border-left: 5px solid transparent;
     border-right: 5px solid transparent;
     border-top: 10px solid black;
     display:inline-block;
}
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <!--1-->
        <div >

            {{1==2}}
        </div> 
        <div>
            20+30={{20+30}}
        </div>

        <!---2-->
        <div>
            {{['david','pam','naveen'][2]}}
        </div>
        <div ng-controller="myController">
            {{message}}
        </div>
        <!--3-->
        <div ng-controller="myController">
    <div>First Name : {{ employee.firstName }}</div>
    <div>Last Name : {{ employee.lastName }}</div>
    <div>Gender : {{ employee.gender}}</div>
</div>
        <!--4-->
            <div ng-controller="myController">
        <div>
            Country : {{ country.name }}
        </div>
        <div>
            Capital : {{ country.capital }}
        </div>
        <div>
            <img src="{{country.flag}}"
                 alt="{{ country.name + ' Flag' }}"
                 style="height:100px; width:200px"/>
        </div>

     
    </div>





        <!--5----

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
    </form>


<!--6--

    <div ng-controller="myController">
        <ul ng-repeat="country in countries">
            <li>
                {{country.name}}
                <ul>
                    <li ng-repeat="city in country.cities">
                        {{city.name}}
                    </li>
                </ul>
            </li>
        </ul>
    </div>





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
            --->
        <br /><br />
        <br />


        
  <!--7--


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
       
    -->



        <!--8---
            <div ng-controller="myController">
        Rows to display : <input type="number" step="1"
                                 ng-model="rowCount" max="5" min="0" />
        <br /><br />
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Salary (number filter)</th>
                    <th>Salary (currency filter)</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees | limitTo:rowCount">
                    <td> {{ employee.name | uppercase }} </td>
                    <td> {{ employee.dateOfBirth | date:"dd/MM/yyyy" }} </td>
                    <td> {{ employee.gender }} </td>
                    <td> {{ employee.salary | number:2 }} </td>
                    <td> {{ employee.salary | currency : "£" : 1 }} </td>
                </tr>
            </tbody>
        </table>
    </div>
-->

      <!--9--
        <div ng-controller="myController">
        Sort By :
        <select ng-model="sortColumn">
            <option value="name">Name ASC</option>
            <option value="+dateOfBirth">Date of Birth ASC</option>
            <option value="+gender">Gender ASC</option>
            <option value="-salary">Salary DESC</option>
        </select>
        <br /><br />
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Salary</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees | orderBy:sortColumn">
                    <td>
                        {{ employee.name }}
                    </td>
                    <td>
                        {{ employee.dateOfBirth | date:"dd/MM/yyyy" }}
                    </td>
                    <td>
                        {{ employee.gender }}
                    </td>
                    <td>
                        {{ employee.salary  }}
                    </td>
                </tr>
            </tbody>
        </table>
    </div>-->


        <!--10

            <div ng-controller="myController">
        <table>
            <thead>
                <tr>
                    <th ng-click="sortData('name')">
                        Name <div ng-class="getSortClass('name')"></div>
                    </th>
                    <th ng-click="sortData('dateOfBirth')">
                        Date of Birth <div ng-class="getSortClass('dateOfBirth')"></div>
                    </th>
                    <th ng-click="sortData('gender')">
                        Gender <div ng-class="getSortClass('gender')"></div>
                    </th>
                    <th ng-click="sortData('salary')">
                        Salary <div ng-class="getSortClass('salary')"></div>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees | orderBy:sortColumn:reverseSort">
                    <td> {{ employee.name }} </td>
                    <td> {{ employee.dateOfBirth | date:"dd/MM/yyyy" }} </td>
                    <td> {{ employee.gender }} </td>
                    <td> {{ employee.salary  }} </td>
                </tr>
            </tbody>
        </table>
    </div>
            -->



        <!--11
        <div ng-controller="myController">
        Search : <input type="text" placeholder="Search employees"
                        ng-model="searchText" />
        <br /><br />
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Salary</th>
                    <th>City</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees | filter:searchText">
                    <td> {{ employee.name }} </td>
                    <td> {{ employee.gender }} </td>
                    <td> {{ employee.salary  }} </td>
                    <td> {{ employee.city  }} </td>
                </tr>
            </tbody>
        </table>
    </div>
            -->



        <!--12--
        <div ng-controller="myController">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Salary</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees">
                    <td> {{ employee.name }} </td>
                    <td> {{ employee.gender | gender}} </td>
                    <td> {{ employee.salary  }} </td>
                </tr>
            </tbody>
        </table>
    </div>-->

        <!--13--

        <div ng-controller="myController">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Salary</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees">
                    <td> {{ employee.name }} </td>
                    <td> {{ employee.gender | gender}} </td>
                    <td> {{ employee.salary  }} </td>
                </tr>
            </tbody>
        </table>
    </div>-->

        <!--14--
        <div ng-controller="myController">
        <input type="checkbox" ng-model="hideSalary" />Hide Salary
        <br /><br />
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>City</th>
                    <th ng-hide="hideSalary">Salary</th>
                    <th ng-show="hideSalary">Salary</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees">
                    <td> {{ employee.name }} </td>
                    <td> {{ employee.gender}} </td>
                    <td> {{ employee.city}} </td>
                    <td ng-hide="hideSalary"> {{ employee.salary  }} </td>
                    <td ng-show="hideSalary"> ##### </td>
                </tr>
            </tbody>
        </table>
    </div>
            -->
        <!--15--

         <div ng-init="employees = [
                    { name: 'Ben', gender: 'Male', city: 'London' },
                    { name: 'Sara', gender: 'Female', city: 'Chennai' },
                    { name: 'Mark', gender: 'Male', city: 'Chicago' },
                    { name: 'Pam', gender: 'Female', city: 'London' },
                    { name: 'Todd', gender: 'Male', city: 'Chennai' }
                ]">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>City</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="employee in employees">
                    <td> {{ employee.name }} </td>
                    <td> {{ employee.gender}} </td>
                    <td> {{ employee.city}} </td>
                </tr>
            </tbody>
        </table>
    </div>
        <div ng-controller="myController">
        <ul>
            <li ng-repeat="country in countries" ng-init="parentIndex = $index">
                {{country.name}}
                <ul>
                    <li ng-repeat="city in country.cities">
                        {{city.name}} - Parent Index = {{ parentIndex }}, Index = {{ $index }}
                    </li>
                </ul>
            </li>
        </ul>
    </div>-->


        <!--16-->
    <div ng-controller="myController">
        Select View :
        <select ng-model="employeeView">
            <option value="EmployeeTable.html">Table</option>
            <option value="EmployeeList.html">List</option>
        </select>
        <br /><br />
        <div ng-include="employeeView">
        </div>
    </div>



</body>
    
</html>
