<%--
  Created by IntelliJ IDEA.
  User: azadx
  Date: 3/1/2019
  Time: 8:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Goals Report</title>
</head>
<body>

    <table>

        <tr>
            <th>ID</th>
            <th>Minutes</th>
        </tr>

        <c:forEach items="${goals}" var="goal">

            <tr>
                <td>${goal.id}</td>
                <td>${goal.minutes}</td>

                <td>
                    <table>

                        <tr>
                            <th>Exercise ID</th>
                            <th>Exercise Minutes</th>
                            <th>Exercise Activity</th>
                        </tr>

                        <c:forEach items="${goal.exercises}" var="exercise">

                            <tr>
                                <td>${exercise.id}</td>
                                <td>${exercise.minutes}</td>
                                <td>${exercise.activity}</td>
                            </tr>

                        </c:forEach>

                    </table>
                </td>
            </tr>

        </c:forEach>

    </table>

</body>
</html>
