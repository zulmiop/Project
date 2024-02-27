<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Online Shopping - ${title }</title>
    <script type="text/javascript">
        window.menu = '${title }';
        window.contextRoot = '${contextRoot}'
    </script>
    <!-- Bootstrap core CSS -->

    <link href="${contextRoot }/static/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Readable Theme -->
    <link href="${contextRoot }/static/css/bootstrap-readable-theme.css"
          rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${contextRoot }/static/css/myapp.css" rel="stylesheet">
    <style>
        /* Set global properties */
        body {
            background-image: url('https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }
        
        .login-container {
    margin-top: 50px;
}

.login-form {
    background-color: #fff;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.login-form h4 {
    margin-bottom: 20px;
    color: #333;
}

.login-form label {
    font-weight: bold;
    color: #555;
}

.login-form input[type="email"],
.login-form input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.login-form input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #337ab7;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.login-form input[type="submit"]:hover {
    background-color: #286090;
}

.login-form .register-link {
    margin-top: 15px;
    text-align: right;
}

.login-form .register-link a {
    color: #337ab7;
    text-decoration: none;
}

.login-form .register-link a:hover {
    text-decoration: underline;
}
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


<div class="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="${contextRoot }/home">Online
                    Shopping</a>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="content">
        <div class="container">

            <c:if test="${not empty message }">
                <div class="row">
                    <div class="col-md-offset-3 col-md-6">
                        <div class="alert alert-danger">${message }</div>
                    </div>
                </div>

            </c:if>

            <c:if test="${not empty logout }">
                <div class="row">
                    <div class="col-md-offset-3 col-md-6">
                        <div class="alert alert-success">${logout }</div>
                    </div>
                </div>

            </c:if>

            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4>Login</h4>
                        </div>
                        <div class="panel-body">
                            <form action="${contextRoot }/login" method="post"
                                  class="form-horizontal" id="loginForm">
                                <div class="form-group">
                                    <label for="username" class="col-md-4 control-label">Email
                                        : </label>
                                    <div class="col-md-8">
                                        <input type="email" name="username" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="password" class="col-md-4 control-label">Password
                                        : </label>
                                    <div class="col-md-8">
                                        <input type="password" name="password" class="form-control"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-offset-4 col-md-8">
                                        <input type="submit" name="password" class="btn btn-primary"/>
                                        <input type="hidden" name="${_csrf.parameterName }"
                                               value="${_csrf.token }"/>
                                    </div>
                                </div>

                            </form>
                        </div>
                        <div class="panel-footer">
                            <div class="text-right">
                                New User - <a href="${contextRoot }/register">Register Here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Content -->
    <!-- Footer -->
    <%@include file="share/footer.jsp" %>

    <!-- jQuery -->
    <script src="${contextRoot }/static/js/jquery.js"></script>

    <!-- jQuery validator -->
    <script src="${contextRoot }/static/js/jquery.validate.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${contextRoot }/static/js/bootstrap.min.js"></script>

    <!-- Self coded javascript -->
    <script src="${contextRoot }/static/js/myapp.js"></script>
</div>
</body>

</html>
