<%@include file="../shared/flows-header.jsp" %>
<style>
    /* Set global properties */
    body {
        background-image: url('https://www.tendencias.kpmg.es/wp-content/uploads/2018/11/GettyImages-912949110.jpg');
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
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
    .panel-primary {
        border-color: #337ab7; /* Primary panel border color */
    }
    
    .panel-primary > .panel-heading {
        background-color: #337ab7; /* Primary panel header background color */
        color: #fff; /* Primary panel header text color */
    }
    
    .panel-primary > .panel-heading h4 {
        margin-top: 0; /* Remove top margin for the heading */
    }
    
    .panel-primary > .panel-body {
        padding: 20px; /* Add padding to the panel body */
    }
    
    .form-horizontal .form-group {
        margin-bottom: 15px; /* Add margin between form groups */
    }
    
    .form-horizontal .control-label {
        padding-top: 7px; /* Adjust padding for better alignment */
    }
    
    .form-control {
        border-radius: 0; /* Remove border radius for form inputs */
    }
    
    .radio-inline {
        margin-right: 10px; /* Add margin between radio buttons */
    }
    
    .btn-primary {
        background-color: #337ab7; /* Primary button background color */
        border-color: #2e6da4; /* Primary button border color */
    }
    
    .btn-primary:hover {
        background-color: #286090; /* Primary button hover background color */
        border-color: #204d74; /* Primary button hover border color */
    }
    
    .btn-primary span {
        margin-left: 5px; /* Add space between button text and icon */
    }
</style>

<div class="container">

    <div class="row">
        <div class="col-sm-offset-4 col-sm-4">
            <div class="text-center">
                <h1>Welcome!</h1>
                <h3>keep shopping with us.</h3>
                <h6>You can use your email address as username to login!</h6>
                <div>
                    <a href="${contextRoot }/login" class="btn btn-lg btn-success">Login
                        Here</a>
                </div>
            </div>

        </div>

    </div>


</div>


<%@ include file="../shared/flows-footer.jsp" %>