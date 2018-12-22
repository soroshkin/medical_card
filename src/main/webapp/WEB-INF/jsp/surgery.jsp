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
    <script type="text/javascript" src="resources/js/surgery.js" defer></script>
    <script type="text/javascript" src="resources/js/common.js" defer></script>
</head>

<body>
<jsp:include page="fragments/bodyHeader.jsp"/>
<div class="container" style="margin-bottom: 70px;">
    <div class="jumbotron" style="margin-top: 70px;">
        <form id="detailsForm" >
            <input type="hidden" name="id"  id="id" readonly value="${surgery.getId()}">
            <input type="hidden" name="patientId" id="patientId" readonly value="${patientId}">
            <div class="container" style="width: 300px;">
            <div class="col-md-12 mb-2" style="text-align: center">
                <label for="date">Дата проведения операции</label>
                <input type="date" class="form-control" name="date" id="date" required="" value="${surgery.getDate()}">
                <div class="invalid-feedback">
                    Please enter your shipping address.
                </div>
            </div>
        </div>
        <div class="container" style="width: 800px; text-align: center">
            <div class="col-md-12 mb-3">
                <label for="type">Описание</label>
                <textarea class="form-control" name="type" id="type" rows="8">${surgery.getType()}</textarea>
                <div class="invalid-feedback">
                    Please enter your shipping address.
                </div>
            </div>
            <div>
                <button type="button" class="btn btn-secondary" onclick="back()">Обратно</button>
                <button type="button" class="btn btn-danger" onclick="deleteSurgery('delete')">Удалить</button>
                <button type="button" class="btn btn-primary" onclick="save()">Сохранить</button>


            </div>
        </div>
        </form>
    </div>

</div>
<div class="footer" style="text-align: center;">
    <jsp:include page="fragments/footer.jsp"/>

</div>
</body>
<jsp:include page="fragments/i18n.jsp">
    <jsp:param name="page" value="userList"/>
</jsp:include>