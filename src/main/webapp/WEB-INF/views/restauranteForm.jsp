<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<header>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <title>Restaurante</title>
</header>
<body>
    <div class="container">
    <form method="post" action="/cadastraRestaurante">
    <div class="form-group">
        <label>Nome</label>
        <input name="nome" value="${nome}" class="form-control"></input>
    </div>
    <div class="form-group">
         <label>Endereço</label>
         <input name="endereco" value="${endereco}" class="form-control"></input>
    </div>
    <div class="form-group">
         <label>Telefone</label>
         <input name="telefone" value="${telefone}" class="form-control"></input>
    </div>
    <div class="form-group">
         <label>Site</label>
         <input name="site" value="${site}" class="form-control"></input>
    </div>
    <div class="form-group">
          <label>Foto</label>
          <input name="foto" value="${foto}" class="form-control"></input>
    </div>
    <div class="form-group">
        <label for="tipo">Tipo de Refeição</label>
        <select name="tipo" id="tipo" class="form-control">
         <c:forEach items="${tipo}" var="refeicao">
         <option value="${refeicao}" ${refeicao.equals(tipo) ? 'selected' : ''}>${refeicao.displayName}</option>
         </c:forEach>
         </select>
    </div>

    <div class="form-group">
    <button type="submit" class="btn btn-primary">Cadastrar</button>
    </div>
    </form>
    </div>
        <div class="form-group">
        <button href class="btn btn-primary">Restaurantes cadastrados</button>
        </div>
</body>
</html>
