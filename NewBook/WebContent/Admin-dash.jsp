<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="Reuse/CommonLink.html"></jsp:include>
    <title>My-Book</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
</div>
 <div class="Admin container">

        <div class="sidebar">
            <label> Admin Menu</label><br>
            <button class="Admin"><a class="admindash" href="#">Show Product</a></button><br>
            <button class="Admin" data-toggle="modal" data-target="#addProduct"><a class="admindash"
                    href="#addProduct">Add Product</a></button><br>
            <button class="Admin"><a class="admindash" href="#">Users</a></button>
        </div>

        <!-- ====================================================== -->
        <div class="outwindow">
            <div class="showprd">

            </div>
            
            </div>
            <div class="mnguser">

            </div>


        </div>
        <!-- =================================================== -->
    </div>


    <!-- modal -->
    <!-- Button trigger modal -->
    <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addProduct">
    Launch demo modal
  </button> -->

    <!-- Modal -->
    <div class="modal fade" id="addProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="color: black;">
                    <form method="POST" action="ProductDetails">
                    <div class="form-group">
                        <label for="product-name">Name</label>
                        <input id="product-name" Names="form-control" type="text" name="prdname">
                    </div>
                   
                    <div class="form-group">
                        <label for="my-textarea">Description</label>
                        <textarea id="my-textarea" class="form-control" name="prddesc" rows="3"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="product-desc">Author</label>
                        <input id="product-desc" class="form-control" type="text" name="prdauthor">
                    </div>

                    <div class="form-group">
                        <label for="cat">Category</label>
                        <input id="cat" class="form-control" type="text" name="prdcat">
                    </div>
                  <!--   <div class="form-group">
                        Product Image<input id="prdimg" class="form-control-file" type="file" name="prdimg">
                    </div>
 -->
                    <div class="form-group">
                        <label for="product-price">Price</label>
                        <input id="product-price" class="form-control" type="text" name="Prdprice">
                    </div>
                
                <div class="modal-footer">
                    <button type="button" class="btn btn-Dark" data-dismiss="modal">Close</button>
                <!--     <button type="button" class="btn btn-success">Add Product</button>
 -->             
 					  
 			   </div>
                	<input type="submit" class= "btn btn-success" value="Add Product">
                </form>
                </div>
                
            </div>
        </div>
    </div>
    <!-- end of modal -->


<div id="mybookfooter">
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>