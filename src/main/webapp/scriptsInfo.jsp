<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="columns" scope="request" type="java.util.List"/>
<jsp:useBean id="indexes" scope="request" type="java.util.List"/>
<jsp:useBean id="vendors" scope="request" type="java.util.List"/>
<jsp:useBean id="tableHolder" scope="request" type="pojos.TableInfoHolder"/>
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

            <c:forEach var="column" items="${columns}" varStatus="loop">
                <tr>
                    <td> ${loop.count}</td>
                    <td>${column.name}</td>
                    <td>${column.type}</td>
                    <td>${column.attributes}</td>
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

    <fieldset id="databases-information">
        <legend>Data base types</legend>
            <div class="contaiter flex-contaiter" >
                <c:forEach var="vendor" items="${tableHolder.vendorDBS}" varStatus="loop">
                    <div class="container hana">
                        <div class="text field" >${vendor.name}</div>
                        <tags:yesno value="${vendor.isEnabled}"/>
                    </div>
                </c:forEach>
            </div>
    </fieldset>
    <fieldset id="Indexes-information"> //indexes
        <legend>Indexes</legend>
        <table>
            <tr>
                <th>#</th>
                <th>Field name of the index</th>
                <th>Is unique</th>
            </tr>

            <c:forEach var="index" items="${indexes}" varStatus="loop">
            <tr>
                <td> ${loop.count}</td>
                <td>${index.name}</td>
                <td>
                    <label for="isUnique">Is index unique</label>
                    <tags:yesno id="isUnique" value="${index.isUnique}"/>
                </td>

            </tr>
        </table>
    </fieldset>
    <button type="submit" value="Submit">Submit</button>
</form>
</body>
</html>