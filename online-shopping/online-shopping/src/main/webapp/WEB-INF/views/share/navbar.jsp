<%@taglib prefix="security"
          uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shopping</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        /* Background image */
        body {
            background-image: url('https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }

        /* Navbar */
        .navbar {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border: none; /* Remove border */
        }

        .navbar-nav > li > a {
            color: #333; /* Navbar link color */
        }

        .navbar-nav > li > a:hover,
        .navbar-nav > li > a:focus {
            color: #000; /* Navbar link hover/focus color */
        }

        .navbar-brand {
            font-weight: bold;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${contextRoot }/home">Online
                Shopping</a>
        </div>
        <div class="collapse navbar-collapse"
             id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li id="about"><a href="${contextRoot }/about">About</a></li>

                <li id="contact"><a href="${contextRoot }/contact">Contact</a></li>

                <li id="listProducts"><a
                        href="${contextRoot }/show/all/products">View Product</a></li>
                <security:authorize access="hasAuthority('ADMIN')">
                    <li id="manageProducts"><a
                            href="${contextRoot }/manage/products">Manage Products</a></li>
                </security:authorize>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <security:authorize access="isAnonymous()">
                    <li id="manageProducts"><a href="${contextRoot }/register">Sign
                        Up</a></li>


                    <li id="manageProducts"><a href="${contextRoot }/login">Login</a></li>

                </security:authorize>
                <security:authorize access="isAuthenticated()">
                    <li class="dropdown" id="userCart"><a
                            class="btn btn-default dropdown-toggle" href="javascript:void(0)"
                            id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="true"> ${userModel.fullName } <span
                            class="caret"></span>
                    </a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <security:authorize access="hasAuthority('USER')">
                                <li id="cart"><a href="${contextRoot}/cart/show"> <span
                                        class="glyphicon glyphicon-shopping-cart"></span>&#160;<span
                                        class="badge">${userModel.cart.cartLines }</span> - &#8377;
                                        ${userModel.cart.grandTotal }
                                </a></li>

                                <li role="separator" class="divider"></li>
                            </security:authorize>
                            <li id="logout"><a href="${contextRoot}/logout">Logout</a></li>
                        </ul>
                    </li>
                </security:authorize>
            </ul>
        </div>
    </div>
</nav>


<script type="text/javascript">

    window.userRole = '${userModel.role }';

</script>

</body>
</html>
