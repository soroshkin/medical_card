<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <jsp:include page="fragments/headTag.jsp"/>
    <link rel="stylesheet" href="resources/css/dataTables.css">
</head>

<body>

<script type="text/javascript" src="resources/js/common.js" defer></script>
<script type="text/javascript" src="resources/js/userTables.js" defer></script>
<jsp:include page="fragments/bodyHeader.jsp"/>
<p></p>
<div class="container" style="margin-bottom: 70px; margin-top: 50px;">
    <table id="userList" class="display" style="width:100%">
        <thead>
        <tr>
            <td>Имя</td>
            <td>Дата рождения</td>
            <td>Адрес</td>
            <td>Телефон</td>
            <th>Открыть</th>
            <th>Редактировать</th>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td>Имя</td>
            <td>Дата рождения</td>
            <td>Адрес</td>
            <td>Телефон</td>
            <th>Открыть</th>
            <th>Редактировать</th>
        </tr>
        </tfoot>
    </table>


</div>
<div class="footer" style="text-align: center;">
    <jsp:include page="fragments/footer.jsp"/>
</div>
</body>
<jsp:include page="fragments/i18n.jsp">
    <jsp:param name="page" value="userList"/>
</jsp:include>