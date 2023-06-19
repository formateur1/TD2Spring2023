<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>

	<section class="vh-100" style="background-color: #eee;">
	  <div class="container h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-lg-12 col-xl-11">
	        <div class="card text-black" style="border-radius: 25px;">
	          <div class="card-body p-md-5">
	            <div class="row justify-content-center">
	              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
	
	                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Enregistrer Produit</p>
	
	                <form class="mx-1 mx-md-4" method="post" action="/produit/modifierProduit" modelAttribute="produit">
	                
	                <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="hidden" name="id" class="form-control" value="${ p1.id }" />
	                    </div>
	                  </div>
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="text" name="nom" class="form-control" value="${ p1.nom }" />
	                      <label class="form-label" for="nom">Nom :</label>
	                    </div>
	                  </div>
	                  
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="text" name="reference" class="form-control" value="${ p1.reference }" />
	                      <label class="form-label" for="reference">Référence :</label>
	                    </div>
	                  </div>
	                  
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="text" name="prix" class="form-control" value="${ p1.prix }" />
	                      <label class="form-label" for="prix">prix :</label>
	                    </div>
	                  </div>
	
	                  <div class="d-flex flex-row align-items-center mb-4">
	                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
	                    <div class="form-outline flex-fill mb-0">
	                      <input type="text" name="poids" class="form-control" value="${ p1.poids }" />
	                      <label class="form-label" for="poids">Poids</label>
	                    </div>
	                  </div>
	
	                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
	                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
	                    <button type="reset" class="btn btn-primary btn-lg">Reset</button>
	                  </div>
	
	                </form>
	
	              </div>
	              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
	
	                <img src="https://media.ccmbg.com/tc/4881385133/929330/1637230514"
	                  class="img-fluid" alt="Sample image">
	
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</body>
</html>