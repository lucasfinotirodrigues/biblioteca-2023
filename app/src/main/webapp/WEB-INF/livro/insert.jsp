<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Livro</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <h1>Novo Livro</h1>
            <form action="/livro/insert" method="post">
                <div class="d-flex gap-3 mb-3">
                    <div class="form-group">
                        <label for="nome">Título:</label>
                        <input type="text" name="titulo" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="nome">ISBN:</label>
                        <input type="text" name="isbn" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="nome">Gênero:</label>
                       <select name="genero" class="form-select">
                            <c:forEach var="g" items="${generos}">
                                <option value="${g.id}">${g.nome}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <br />
                </div>
                <a href="/livro/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>