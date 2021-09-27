<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Films</title>
        <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h2>Films</h2>
        <div class="container">
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>poster</th>
                        <th>title</th>
                        <th>description</th>
                        <th>year</th>
                        <th>genre</th>
                        <th>watched</th>
                        <th>action</th>
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
                            <td>${film.watched}</td>
                            <td>
                                <a href = "/edit/${film.id}">edit</a>
                                <a href = "/delete/${film.id}">delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <h2>Add</h2>
        <a href="<c:url value="/add"/>">Add new film</a>
    </body>
</html>