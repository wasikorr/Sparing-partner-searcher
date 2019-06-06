<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 03.06.19
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie ogloszenia</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <c:if test="${number == 1}">
        <link rel="stylesheet" href="../../media/css/1.css"/>
    </c:if>

    <c:if test="${number == 2}">
        <link rel="stylesheet" href="../../media/css/2.css"/>
    </c:if>

    <c:if test="${number == 3}">
        <link rel="stylesheet" href="../../media/css/3.css"/>
    </c:if>
</head>
<body>
<jsp:include page="../elements/navbar.jsp" />


<section class="container-fluid bg jumbotron">
    <section class="row justify-content-center text-center">
        <section class="col-12 col-sm-6 col-md-3">

            <form:form class="form-container" modelAttribute="advert" method="POST">
                <form:errors path="*"/>
                Miasto:<br>
                <form:input path="city"/> <br>
                Dzielnica:<br>
                <form:input path="cityRegion"/> <br>
                Opis:<br>
                <form:textarea path="description"/> <br>
                Doswiadczenie w latach:<br>
                <form:input path="experience" type="number"/> <br>
                Chce sparing:
                <form:checkbox path="wantSparring"/> <br>
                Chce trening:
                <form:checkbox path="wantTraining"/> <br>
                Poziom zaawansowania:<br>
                <form:select path="playerSkills">
                    <form:option value="POCZATKUJACY"/>
                    <form:option value="AMATOR"/>
                    <form:option value="SREDNI"/>
                    <form:option value="DOBRY"/>
                    <form:option value="EXPERT"/>
                </form:select><br>

                Styl gry:<br>
                <form:select path="gameStyle">
                    <form:option value="OFENSYWNY"/>
                    <form:option value="DEFENSYWNY"/>
                </form:select><br><br><br>

                <button class="btn btn-primary btn-large" type="submit">Dodaj</button>

            </form:form>

        </section>
    </section>
</section>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>



