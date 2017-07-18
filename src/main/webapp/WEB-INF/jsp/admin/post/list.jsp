<%--
  Created by IntelliJ IDEA.
  User: Jakaria
  Date: 7/18/2017
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 80%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<table>
    <tr>
        <th>Title</th>
        <th style="width: 600px">Details</th>
        <th>Post By</th>
        <th>Date</th>
    </tr>
    <c:forEach items="${posts}" var="post" varStatus="i">
        <tr>
            <td>${post.title}</td>
            <td>
                <c:set var ="details" value="${fn:substring(post.details,0 ,200 )}"/>
                    ${details}

            </td>
            <td></td>
            <td>
                <fmt:formatDate value="${post.created}" />
            </td>
            <td>
                <a target="_blank"
                   href="<c:url value="/admin/post/edit/${post.id}"/>">Edit</a>
            </td>
        </tr>
    </c:forEach>
    <%--<tr>--%>
    <%--<td>Centro comercial Moctezuma</td>--%>
    <%--<td>Francisco Chang</td>--%>
    <%--<td>Mexico</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Ernst Handel</td>--%>
    <%--<td>Roland Mendel</td>--%>
    <%--<td>Austria</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Island Trading</td>--%>
    <%--<td>Helen Bennett</td>--%>
    <%--<td>UK</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Laughing Bacchus Winecellars</td>--%>
    <%--<td>Yoshi Tannamuri</td>--%>
    <%--<td>Canada</td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
    <%--<td>Magazzini Alimentari Riuniti</td>--%>
    <%--<td>Giovanni Rovelli</td>--%>
    <%--<td>Italy</td>--%>
    <%--</tr>--%>
</table>

</body>
</html>
