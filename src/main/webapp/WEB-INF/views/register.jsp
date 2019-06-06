<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Rejestracja</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../../media/css/style.css"/>
</head>
<body>
<jsp:include page="../elements/navbar.jsp" />

<%--<form:form modelAttribute="form" method="POST">--%>
<%--    <form:errors path="*"/>--%>
<%--    Nazwa uzytkownika:--%>
<%--    <form:input path="username"/> <br>--%>
<%--    Haslo:--%>
<%--    <form:password path="password"/> <br>--%>
<%--    Imie:--%>
<%--    <form:input path="firstName"/> <br>--%>
<%--    Nazwisko:--%>
<%--    <form:input path="lastName"/> <br>--%>
<%--    Email:--%>
<%--    <form:input path="email"/> <br>--%>
<%--    <button type="submit">Zarejestruj</button>--%>

<%--</form:form>--%>

<section class="container-fluid bg jumbotron">
    <section class="row justify-content-center">
        <section class="col-12 col-sm-6 col-md-3">
            <form:form class="form-container" modelAttribute="form" method="post">
                <form:errors path="*"/>

                <div class="form-group">
                    <label>Nazwa użytkownika:</label>
                    <form:input class="form-control" placeholder="Podaj nazwę użytkownika" path="username"/>
                </div>

                <div class="form-group">
                    <label>Hasło:</label>
                    <form:password class="form-control" placeholder="Podaj hasło" path="password"/>
                </div>

                <div class="form-group">
                    <label>Imię:</label>
                    <form:input class="form-control" placeholder="Podaj imie" path="firstName" />
                </div>

                <div class="form-group">
                    <label>Nazwisko:</label>
                    <form:input class="form-control" placeholder="Podaj naziwsko" path="lastName" />
                </div>

                <div class="form-group">
                    <label>E-mail</label>
                    <form:input class="form-control" placeholder="Podaj email" path="email"/>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Potwierdź</button>
            </form:form>
        </section>
    </section>
</section>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
