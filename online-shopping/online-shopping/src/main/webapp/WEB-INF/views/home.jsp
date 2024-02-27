<style>
        /* Background image */
        body {
            background-image: url('https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #fff; /* Text color */
</style>
<div class="container">

    <div class="row">

        <div class="col-md-3">
            <%@include file="./share/sidebar.jsp" %>
        </div>

        <div class="col-md-9">

            <div class="row carousel-holder">

                <div class="col-md-12">
                    <div id="carousel-example-generic" class="carousel slide"
                         data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0"
                                class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">

                            <div class="item active">
                                <img class="slide-image" src="${contextRoot }/static/images/banner1.jpg"
                                     alt="">
                            </div>
                            <div class="item">
                                <img class="slide-image" src="${contextRoot }/static/images/banner2.jpg"
                                     alt="">
                            </div>
                            <div class="item">
                                <img class="slide-image" src="${contextRoot }/static/images/banner3.jpg"
                                     alt="">
                            </div>
                            <div class="item">
                                <img class="slide-image" src="${contextRoot }/static/images/banner4.jpg"
                                     alt="">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-example-generic"
                           data-slide="prev"> <span
                                class="glyphicon glyphicon-chevron-left"></span>
                        </a> <a class="right carousel-control"
                                href="#carousel-example-generic" data-slide="next"> <span
                            class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                    </div>
                </div>

            </div>

                <div class="col-sm-4 col-lg-4 col-md-4">
                    <h4>Checkout Products!</h4>
                    <hr/>
                    <a class="btn btn-primary" href="${contextRoot}/show/all/products">Click Here!</a>
                </div>

            </div>

        </div>

    </div>
<!-- /.container -->