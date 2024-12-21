<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                <jsp:include page="Left.jsp"></jsp:include>
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> 
                                        <div class="img-small-wrap">
                                        </div>
                                    </article>
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>
                                                    ${detail.description}
                                                </p></dd>
                                        </dl>

                                        <hr>
                                        <form action="addCart?pid=${detail.id }" method="post">
            <div class="table-responsive mb-2">
              <table class="table table-sm table-borderless">
                <tbody>
                  <tr>
                    <td class="pl-0 pb-0 w-25">Quantity</td>
                    <td class="pb-0">Select size</td>
                  </tr>
                  <tr>
                    <td class="pl-0">
                    <div class="mt-1">
                      <div class="def-number-input number-input safari_only mb-0" style="display: flex; align-items: center;">
                        <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                          class="minus"></button>
                        <input class="quantity" min="0" name="quantity" value="1" type="number">
                        <button type="button" onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                          class="plus"></button>
                      </div>
                      </div>
                    </td>
                    <td>
                      <div class="mt-1">
                        <div class="form-check form-check-inline pl-0">
                          <input type="radio" class="form-check-input" id="small" value="small" name="size" checked>
                          <label class="form-check-label small text-uppercase card-link-secondary"
                            for="small">Small</label>
                        </div>
                        <div class="form-check form-check-inline pl-0">
                          <input type="radio" class="form-check-input" id="medium" value="medium" name="size">
                          <label class="form-check-label small text-uppercase card-link-secondary"
                            for="medium">Medium</label>
                        </div>
                        <div class="form-check form-check-inline pl-0">
                          <input type="radio" class="form-check-input" id="large" value="large" name="size">
                          <label class="form-check-label small text-uppercase card-link-secondary"
                            for="large">Large</label>
                        </div>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="mt-1">
             <button type="submit" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
           <button type="submit" class="btn btn-light btn-md mr-1 mb-2"><i class="fas fa-shopping-cart pr-2"></i>Add to
              cart</button>
              </div>
              </form>
                                    </article>
                                </aside>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
       <jsp:include page="Footer.jsp"></jsp:include>
       <script>
        window.addEventListener("load",function loadAmountCart(){
                        	 $.ajax({
                                 url: "/Project/loadAmountCart",
                                 type: "get", //send it through get method
                                 data: {
                                 },
                                 success: function (responseData) {
                                     document.getElementById("amountCart").innerHTML = responseData;
                                 }
                             });
                        },false); 
        </script>
        <!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="../../../js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
    <!-- MDB Ecommerce JavaScript -->
    <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
  <script>
    $(document).ready(function () {
      // MDB Lightbox Init
      $(function () {
        $("#mdb-lightbox-ui").load("../../../mdb-addons/mdb-lightbox-ui.html");
      });
    });
  </script>
    </body>
</html>
