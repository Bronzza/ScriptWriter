<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="columns" scope="request" type="java.util.List"/>
<html>
<head>
    <title>Scripts information holder</title>

</head>
<body>
<form autocomplete="off">
    <fieldset id="main-information">
        <legend>Main information</legend>
        <div class="form-group">
            <label for="tableName">Name of the table:</label>
            <input name="tableName" id="tableName" class="text-input" type="text">
        </div>
        <table class="table info">
            <tr>
                <th>#</th>
                <th>Column name</th>
                <th>Column type</th>
                <th>Attributes
                    (for example 'NOT NULL', 'DEFAULT')</th>
                <th></th>
            </tr>

            <c:forEach var="user" items="${columns}" varStatus="loop">
                <tr>
                    <td> ${loop.count}</td>
                    <td>${columns.name}</td>
                    <td>${columns.type}</td>
                    <td>${columns.attributes}</td>
                </tr>
            </c:forEach>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <button class="button button-add-row" onclick="addRow()">Add a row</button>
                    </td>
                </tr>

        </table>
    </fieldset>

</form>


</body>
</html>
