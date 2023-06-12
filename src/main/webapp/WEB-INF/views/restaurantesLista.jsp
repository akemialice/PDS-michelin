<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Restaurantes</title>
<link href="resources/cabecalho.css" rel="stylesheet"/>
<link href="resources/style.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css%22%3E
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css%22%3E
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<!--Bootstrap 5.2-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!--Bootstrap ícones-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">

</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bg-white py-3 fixed-top">
      <div class="container-fluid d-flex justify-content-between">
        <div class="d-flex align-items-center">
        <a class="logo" href="/restaurantes"><img src="resources/imagem/logo.png" alt="logo"></a>
        </div>

    <div class="d-flex align-items-center">
              <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active fw-semibold lang " aria-current="page" href="#" key="tdr">Todos os Restaurantes</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link fw-semibold lang " aria-current="page" href="#" key="paravoce">Para Você</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link fw-semibold lang" aria-current="page" href="#" key="favoritos">Favoritos</a>
                </li>
                <select id="year">
                  <option value="pt" id="pt">PT</option>
                  <option value="en" id="en">EN</option>
                </select>
              </ul>
            </div>


<ul class="navbar-nav">
        <!--Parte do search-->
        <li class="nav-item">
          <a id="search-icon" class="nav-link" aria-current="page" href="#">
            <!-- Ícone da lupa do Bootstrap -->
            <i class="bi bi-search fs-3"></i>
          </a>
          <!-- Search em linha -->
          <div class="inline-search-component">
            <div class="search-container">
              <input class="inline-search-input lang" key="pesquisar" type="text" placeholder="Pesquisar">
            </div>
          </div>
        </li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-list fs-3"></i></a>
          <ul class="dropdown-menu dropdown-menu-white">
            <li><a class="dropdown-item lang" href="#" key = "Sair">Sair</a></li>
            <li><a class="dropdown-item lang" href="#" key = "editarcad">Editar</a></li>
          </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>


<div class="container">
    <h1 class="title">Refeições Rápidas</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${rapidas}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                              <a target="_blank" href="${restaurante.site}" class="card-text" >Site ${restaurante.nome}</a>
                              <div class="form-group">
                              <input type="checkbox" name="ehFavorito" ${favorito.ehFavorito} ? 'checked' : ''/>
                              <label class="labels">Marcar como favorito?</label>
                                             </div>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>
                                             <a href="/restaurantes">Editar</a>


        <h1 class="title">Bares e Populares</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${bares}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                             <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>


            <h1 class="title">Cafeterias</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${cafeterias}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                            <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>

                <h1 class="title">Hamburguerias</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${hamburguerias}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                             <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>

    <h1 class="title">Veganos e Vegetarianos</h1>

                        <div class="cards-wrapper">
                          <c:forEach items="${veganos}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                           <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>






                        <h1 class="title">Frutos do Mar</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${frutos}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                           <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>




                            <h1 class="title">Outras culinárias</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${outras}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                            <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>



                                <h1 class="title">Alta Gastronomia</h1>
                        <div class="cards-wrapper">
                          <c:forEach items="${alta}" var="restaurante">
                                            <div class="card" style="width: 18rem;">
                                            <img src="${restaurante.foto}" class="card-img-top"/>
                                            <div class="card-body">
                                             <p class="card-text">${restaurante.nome}</p>
                                             <p class="card-text">${restaurante.endereco}</p>
                                             <p class="card-text">${restaurante.telefone}</p>
                                        <a target="_blank" href="${restaurante.site}" class="card-text">Site ${restaurante.nome}</a>
                                             </div>
                                             </div>
                                             </c:forEach>
                                             </div>
</div>
</body>
</html>