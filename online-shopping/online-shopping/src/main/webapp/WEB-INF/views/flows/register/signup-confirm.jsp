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
        <!-- Personal Details -->
        <div class="col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4>Personal Details</h4>

                </div>
                <div class="panel-body">
                    <!-- code to display the personal details -->

                    <div class="text-center">
                        <h4>Name : ${registerModel.user.firstName } ${registerModel.user.firstName }</h4>
                        <h5>Email : ${registerModel.user.email }</h5>
                        <h5>Contact Number : ${registerModel.user.contactNumber }</h5>
                        <h5>Role : ${registerModel.user.role }</h5>
                    </div>

                </div>
                <div class="panel-footer">
                    <!-- anchor to move to the edit of personal details -->
                    <a href="${flowExecutionUrl }&_eventId_personal"
                       class="btn btn-primary">Edit</a>

                </div>

            </div>

        </div>

        <!-- Address -->
        <div class="col-sm-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4>Address</h4>

                </div>
                <div class="panel-body">
                    <!-- code to display the personal details -->

                    <div class="text-center">
                        <h4>${registerModel.billing.addressLineOne }</h4>
                        <h4>${registerModel.billing.addressLineTwo }</h4>
                        <h4>${registerModel.billing.city }-${registerModel.billing.postalCode }</h4>
                        <h4>${registerModel.billing.state }-${registerModel.billing.country }</h4>
                    </div>

                </div>
                <div class="panel-footer">
                    <a href="${flowExecutionUrl }&_eventId_billing"
                       class="btn btn-primary">Edit</a>

                </div>

            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
            <div class="text-center">
                <a href="${flowExecutionUrl }&_eventId_submit"
                   class="btn btn-primary">Confirm</a>

            </div>
        </div>
    </div>
</div>


<%@ include file="../shared/flows-footer.jsp" %>