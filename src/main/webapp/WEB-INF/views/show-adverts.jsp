<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sparing" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 04.06.19
  Time: 00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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


    <title>Wyswietl ogloszenia</title>
</head>
<body>

<jsp:include page="../elements/navbar.jsp"/>

<br><br>
<div class="col-md-8 text-center jumbotron container">
    <a class="btn btn-primary btn-lg center" href="/show-adverts/add-advert/${number}"
            role="button">Dodaj
        ogloszenie</a>
    <br><br>

    <h3>Filtrowanie</h3><br>
<%--    <form method="get" action="/show-adverts">--%>
<%--        Miasto: <input type="text" name="city">--%>
<%--        Chce sparing: <input type="checkbox" name="wantSparring"/>--%>
<%--        Chce trening: <input type="checkbox" name="wantTraining"/>--%>
<%--        Poziom:--%>
<%--        <select name="playerSkills">--%>
<%--            <option value="POCZATKUJACY">POCZATKUJACY</option>--%>
<%--            <option value="AMATOR">AMATOR</option>--%>
<%--            <option value="SREDNI">SREDNI</option>--%>
<%--            <option value="DOBRY">DOBRY</option>--%>
<%--            <option value="EXPERT">EXPERT</option>--%>
<%--        </select>--%>
<%--        <button type="submit">Search</button>--%>
<%--    </form>--%>

    <form:form class="form-container" action="/show-adverts/${number}/filter" modelAttribute="filter">
        <form:errors path="*"/>
        <form:hidden path="id"/>
        <form:hidden path="description"/>
        Miasto:
        <form:input path="city"/><br>
        <form:hidden path="cityRegion" />
        Chce sparing:
        <form:checkbox path="wantSparring"/> <br>
        Chce trening:
        <form:checkbox path="wantTraining"/> <br>
        Poziom zaawansowania: <br>
        <form:select path="playerSkills">
            <form:option value="POCZATKUJACY"/>
            <form:option value="AMATOR"/>
            <form:option value="SREDNI"/>
            <form:option value="DOBRY"/>
            <form:option value="EXPERT"/>
        </form:select> <br> <br>


        <form:hidden path="experience"/>
        <form:hidden path="gameStyle"/>

        <button class="btn btn-primary btn-large" type="submit">Szukaj</button>

    </form:form>


    <table class="table">
        <thead class="thead-light">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Uzytkownik</th>
            <th scope="col">Miasto</th>
            <th scope="col">Link</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${adverts}" var="adv" varStatus="advStatus">
            <tr>
                <td>${advStatus.count}</td>
                <td>${adv.user.username}</td>
                <td>${adv.city}</td>
                <td><button type="button" class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#infoModal">
                    Szczegoly
                </button></td>

                <!-- Modal -->
                <div class="modal fade" id="infoModal" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalScrollableTitle">Szczegoly ogloszenia</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body text-left">
                                <h5>Opis:</h5><br>
                                <p>${adv.description}</p>
                                <hr>

                                <h5>Poziom:</h5>
                                <p>${adv.playerSkills}</p>
                                <hr>

                                <h5>Styl:</h5>
                                <p>${adv.gameStyle}</p>
                                <hr>

                                <h5>Doswiedczenie:</h5>
                                <p>${adv.experience} lat.</p>
                                <hr>

                                <h5>Miasto:</h5>
                                <p>${adv.city}</p>
                                <hr>

                                <h5>Dzielnica:</h5>
                                <p>${adv.cityRegion}</p>
                                <hr>

                                <h5>Uzytkownik:</h5>
                                <p>${adv.user.username}</p>
                                <hr>

                                <h5>Adres email: </h5>
                                <p>${adv.user.email}</p>
                                <hr>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
                            </div>
                        </div>
                    </div>
                </div>

            </tr>
        </c:forEach>


<%--        <c:forEach items="${adverts}" var="adv" varStatus="advStatus">--%>
<%--            <tr>--%>
<%--                <td>${advStatus.count}</td>--%>
<%--                <td>${adv.user.username}</td>--%>
<%--                <td>${adv.city}</td>--%>
<%--                <td><a href="advert-info/${adv.id}" type="button" class="btn btn-secondary btn-sm">Kliknij</a></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
        </tbody>
    </table>
</div>






<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
