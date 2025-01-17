<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="Header.jsp" %>
<%@ include file="Navigation.jsp" %>

<c:if test="${listNewProducts.isEmpty() == false}">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">New products</h3>
                        <div class="section-nav">
                            <ul class="section-tab-nav tab-nav">
                                <li class="active">
                                    <a data-toggle="tab" href="#tab1">
                                            ${currentPage}
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <!-- tab -->
                            <div class="tab-pane active">
                                <div class="products-slick" data-nav="#slick-nav-1">
                                    <c:forEach items="${listNewProducts}" var="product">
                                        <div class="product">
                                            <div class="product-img">
                                                <c:forEach items="${categories}" var="category">
                                                    <c:if test="${category.getId() == product.getCategoryID()}">
                                                        <c:if test="${category.getName() == 'Laptops'}">
                                                            <img src="./img/shop01.png" alt="">
                                                        </c:if>
                                                        <c:if test="${category.getName() == 'Cameras'}">
                                                            <img src="./img/shop02.png" alt="">
                                                        </c:if>
                                                        <c:if test="${category.getName() == 'Accessories'}">
                                                            <img src="./img/shop03.png" alt="">
                                                        </c:if>
                                                        <c:if test="${category.getName() == 'Smartphones'}">
                                                            <img src="./img/shop04.png" alt="">
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>

                                                <div class="product-label">
                                                        <%--                                        <span class="sale">-30%</span>--%>
                                                    <c:forEach items="${listNewProducts}" var="newProduct">
                                                        <c:if test="${newProduct == product}">
                                                            <span class="new">NEW</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">
                                                    <c:forEach items="${categories}" var="category">
                                                        <c:if test="${category.getId() == product.getCategoryID()}">
                                                            ${category.getName()}
                                                        </c:if>
                                                    </c:forEach>
                                                </p>
                                                <h3 class="product-name"><a href="#">${product.getName()}</a></h3>
                                                <h4 class="product-price">
                                                    $ ${product.getPrice()}
                                                        <%--                                        <del class="product-old-price">$990.00</del>--%>
                                                </h4>
                                                <div class="product-rating">
                                                    <c:forEach begin="1" end="${product.getRating()}" step="1" var="i">
                                                        <i class="fa fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <div class="product-btns">
                                                    <form method="post" class="product-btns">
                                                        <button class="add-to-wishlist" type="submit" name="wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <form method="post">
                                                    <input type="hidden" name="product" value="${product.getId()}"/>
                                                    <button class="add-to-cart-btn" type="submit" name="addToCart">
                                                        <i class="fa fa-shopping-cart"></i>add to cart
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div id="slick-nav-1" class="products-slick-nav"></div>
                            </div>
                            <!-- /tab -->
                        </div>
                    </div>
                </div>

            </div>


        </div>


    </div>
</c:if>
<c:if test="${listProducts.isEmpty() == false}">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">Products</h3>
                        <div class="section-nav">
                            <ul class="section-tab-nav tab-nav">
                                <li class="active">
                                    <a data-toggle="tab" href="#tab1">
                                            ${currentPage}
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <!-- tab -->
                            <div class="tab-pane active">
                                <div class="products-slick" data-nav="#slick-nav-2">
                                    <c:forEach items="${listProducts}" var="product">
                                        <div class="product">
                                            <div class="product-img">
                                                <c:forEach items="${categories}" var="category">
                                                    <c:if test="${category.getId() == product.getCategoryID()}">
                                                        <c:if test="${category.getName() == 'Laptops'}">
                                                            <img src="./img/shop01.png" alt="">
                                                        </c:if>
                                                        <c:if test="${category.getName() == 'Cameras'}">
                                                            <img src="./img/shop02.png" alt="">
                                                        </c:if>
                                                        <c:if test="${category.getName() == 'Accessories'}">
                                                            <img src="./img/shop03.png" alt="">
                                                        </c:if>
                                                        <c:if test="${category.getName() == 'Smartphones'}">
                                                            <img src="./img/shop04.png" alt="">
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                                <div class="product-label">
                                                        <%--                                        <span class="sale">-30%</span>--%>
                                                    <c:forEach items="${listNewProducts}" var="newProduct">
                                                        <c:if test="${newProduct == product}">
                                                            <span class="new">NEW</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">
                                                    <c:forEach items="${categories}" var="category">
                                                        <c:if test="${category.getId() == product.getCategoryID()}">
                                                            ${category.getName()}
                                                        </c:if>
                                                    </c:forEach>
                                                </p>
                                                <h3 class="product-name"><a href="#">${product.getName()}</a></h3>
                                                <h4 class="product-price">
                                                    $ ${product.getPrice()}
                                                        <%--                                        <del class="product-old-price">$990.00</del>--%>
                                                </h4>
                                                <div class="product-rating">
                                                    <c:forEach begin="1" end="${product.getRating()}" step="1" var="i">
                                                        <i class="fa fa-star"></i>
                                                    </c:forEach>
                                                </div>
                                                <div class="product-btns">
                                                    <form method="post" class="product-btns">
                                                        <button class="add-to-wishlist" type="submit" name="wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <form method="post">
                                                    <input type="hidden" name="product" value="${product.getId()}"/>
                                                    <button class="add-to-cart-btn" type="submit" name="addToCart">
                                                        <i class="fa fa-shopping-cart"></i>add to cart
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div id="slick-nav-2" class="products-slick-nav"></div>
                            </div>
                            <!-- /tab -->
                        </div>
                    </div>
                </div>

            </div>


        </div>


    </div>
</c:if>

<c:if test="${listProducts.isEmpty()}">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="color: red; font-style: italic; text-align: center; margin-top: 100px; margin-bottom: 100px; font-size: 20px;">
                There is no products in this category
            </div>
        </div>
    </div>
</c:if>

<%@ include file="Footer.jsp" %>