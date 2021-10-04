<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <link href="<c:url value="/res/styleEdit.css"/>" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="<c:url value="/res/pageIcon.png"/>"/>
        <c:choose>
            <c:when test="${empty film.title}">
                <title>Добавить</title>
            </c:when>
            <c:otherwise>
                <title>Изменить</title>
            </c:otherwise>
        </c:choose>
    </head>
    <body>
        <div class="container">
            <c:url value="/add" var="addUrl"/>
            <c:url value="/edit" var="editUrl"/>
            <form class="style" action="${empty film.title ? addUrl : editUrl}" name="film" method="POST">
                <c:choose>
                    <c:when test="${!empty film.title}">
                        <h1 class="heading">Изменить фильм</h1>
                        <input type="hidden" name="id" value="${film.id}">
                    </c:when>
                    <c:otherwise>
                        <h1 class="heading">Добавить новый фильм</h1>
                    </c:otherwise>
                </c:choose>
                <p><input type="text" name="image" placeholder="Постер" value="${film.image}" >
                <p><input type="text" name="title" placeholder="Название" value="${film.title}" maxlength="100" required autofocus
                          pattern="^[^\s]+(\s.*)?$">
                <p><textarea name="description" placeholder="Описание">${film.description}</textarea></p>
                <p><input type="number" name="year" placeholder="Год" value="${film.year}" maxlength="4" required>
                <p><input type="text" name="genre" placeholder="Жанр" value="${film.genre}" maxlength="50" required>
                <p class="checkbox">
                    <label for="watched">Просмотренно
                        <c:if test="${film.watched == true}">
                            <input type="checkbox" name="watched" id="watched" value="${film.watched}" checked>
                        </c:if>
                        <c:if test="${film.watched != true}">
                            <input type="checkbox" name="watched" id="watched">
                        </c:if>
                        <span class="checkbox-common checkbox-no">Нет</span>
                        <span class="checkbox-common checkbox-yes">Да</span>
                    </label>
                </p>
                <p>
                    <c:set value="Добавить" var="Добавить"/>
                    <c:set value="Изменить" var="Изменить"/>
                    <input type="submit" value="${empty film.title ? Добавить : Изменить}">
                </p>
                <p class="heading">${message}</p>
            </form>
        </div>
    </body>
</html>