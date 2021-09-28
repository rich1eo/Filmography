<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Фильмы</title>
        <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class = "filmHeader">
            <h1>Фильмы</h1>
        </div>
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Постер</th>
                        <th>Название</th>
                        <th>Описание</th>
                        <th>Год</th>
                        <th>Жанр</th>
                        <th>Просмотренно</th>
                        <th colspan="2">Действия</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var = "film" items="${filmsList}" >
                        <tr class="1tbody">
                            <td>${film.id}</td>
                            <td><img src="${film.image}" alt="poster" width="200" height="200" ></td>
                            <td>${film.title}</td>
                            <td>${film.description}</td>
                            <td>${film.year}</td>
                            <td>${film.genre}</td>
                            <td>
                                <c:if test="${film.watched == true}">
                                    <span class="icon icon-watched"></span>
                                </c:if>
                            </td>
                            <td>
                                <a href="/edit/${film.id}">
                                    <span class="icon icon-edit"></span>
                                </a>
                            </td>
                            <td class="right-side">
                                <a href="/delete/${film.id}">
                                    <span class="icon icon-delete"></span>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="9" class="left-side link right-side">
                            <a href="<c:url value="/add"/>">
                                <span class="icon icon-add"></span>Добавить новый фильм
                            </a>
                        </td>
                </tbody>
            </table>
        </div>
    </body>
</html>