<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jakub
  Date: 03.06.19
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logowanie</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../../media/css/style.css"/>
</head>
<body>

<jsp:include page="../elements/navbar.jsp" />

<%--<h2>Zaloguj się</h2>--%>
<%--<form method="post" action="/login">--%>
<%--    <c:if test="${param.error!=null}">--%>
<%--        <span>Nieprawidłowe dane logowania!</span> <br>--%>
<%--    </c:if>--%>
<%--    <c:if test="${param.logout != null}">--%>
<%--        <span>Zostałeś wylogowany!</span> <br>--%>
<%--    </c:if>--%>
<%--    <div class="form-group">--%>
<%--        <label>Uzytkownik</label>--%>
<%--        <input type="username" class="form-control" name="username" required min="3" max="50"--%>
<%--               placeholder="Podaj nazwe uzytkownika">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        <label>Hasło</label>--%>
<%--        <input type="password" class="form-control" name="password" required min="3" max="20" placeholder="Podaj hasło">--%>
<%--        <a href="/password-reset" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>--%>
<%--    </div>--%>

<%--    <div class="form-group form-group--buttons">--%>
<%--        <a href="/register" class="btn btn--without-border">Załóż konto</a>--%>
<%--        <button class="btn" type="submit">Zaloguj się</button>--%>
<%--    </div>--%>
<%--</form>--%>

<section class="container-fluid bg jumbotron">
    <section class="row justify-content-center">
        <section class="col-12 col-sm-6 col-md-3">
            <form class="form-container" method="post" action="/login">
                <c:if test="${param.error!=null}">
                    <span>Nieprawidłowe dane logowania!</span> <br>
                </c:if>
                <c:if test="${param.logout != null}">
                    <span>Zostałeś wylogowany!</span> <br>
                </c:if>
                <div class="form-group">
                    <label>Nazwa użytkownika:</label>
                    <input type="text" class="form-control" name="username" required min="3" max="20" aria-describedby="emailHelp" placeholder="Podaj nazwe użytkownika">
                </div>
                <div class="form-group">
                    <label>Hasło</label>
                    <input type="password" class="form-control" name="password" required min="3" max="20" placeholder="Podaj hasło">
                </div>
<%--                <div class="form-group form-check">--%>
<%--                    <input type="checkbox" class="form-check-input" name="remember-me">--%>
<%--                    <label class="form-check-label">Zapamiętaj</label>--%>
<%--                </div>--%>
                <button type="submit" class="btn btn-primary btn-block">Potwierdź</button>
            </form>
        </section>
    </section>
</section>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
