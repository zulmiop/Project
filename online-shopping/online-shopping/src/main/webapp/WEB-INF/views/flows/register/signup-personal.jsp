<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4>Sign Up</h4>
                </div>
                <div class="panel-body">
                    <sf:form method="POST" class="form-horizontal" id="registerForm"
                             modelAttribute="user">
                        <div class="form-group">
                            <label class="control-label col-md-4" for="firstName">First
                                Name</label>
                            <div class="col-md-8">
                                <sf:input path="firstName" type="text" class="form-control"
                                          placeholder="First Name"/>
                                <sf:errors path="firstName" cssClass="help-block" element="em"/>
                            </div>
                        </div>
    
                        <div class="form-group">
                            <label class="control-label col-md-4" for="lastName">Last
                                Name</label>
                            <div class="col-md-8">
                                <sf:input path="lastName" type="text" class="form-control"
                                          placeholder="Last Name"/>
                                <sf:errors path="lastName" cssClass="help-block" element="em"/>
                            </div>
                        </div>
    
                        <div class="form-group">
                            <label class="control-label col-md-4" for="email">Email</label>
                            <div class="col-md-8">
                                <sf:input path="email" type="email" class="form-control"
                                          placeholder="abc@xyz.com"/>
                                <sf:errors path="email" cssClass="help-block" element="em"/>
                            </div>
                        </div>
    
                        <div class="form-group">
                            <label class="control-label col-md-4" for="contactNumber">Contact
                                Number</label>
                            <div class="col-md-8">
                                <sf:input path="contactNumber" type="number" maxlength="10"
                                          class="form-control" placeholder="XXXXXXXXXX"/>
                                <sf:errors path="contactNumber" cssClass="help-block"
                                           element="em"/>
                            </div>
                        </div>
    
                        <div class="form-group">
                            <label class="control-label col-md-4" for="password">Password</label>
                            <div class="col-md-8">
                                <sf:input path="password" type="password" class="form-control"
                                          placeholder="Password"/>
                                <sf:errors path="password" cssClass="help-block" element="em"/>
                            </div>
                        </div>
    
                        <div class="form-group">
                            <label class="control-label col-md-4" for="confirmPassword">Confirm
                                Password</label>
                            <div class="col-md-8">
                                <sf:input path="confirmPassword" type="password"
                                          class="form-control" placeholder="Re-Enter Password"/>
                                <sf:errors path="confirmPassword" cssClass="help-block"
                                           element="em"/>
                            </div>
                        </div>
    
                        <!-- radio button using bootstrap class of radio-inline -->
    
                        <div class="form-group">
                            <label class="control-label col-md-4" for="role">Select
                                Role</label>
                            <div class="col-md-8">
                                <label class="radio-inline"> <sf:radiobutton path="role"
                                                                             value="USER" checked="checked"/> User
                                </label> <label class="radio-inline"> <sf:radiobutton
                                    path="role" value="SUPPLIER"/> Supplier
                            </label>
                            </div>
                        </div>
    
                        <div class="form-group">
                            <div class="col-md-offset-4 col-md-8">
                                <!-- submit button inside the form -->
                                <button type="submit" class="btn btn-primary"
                                        name="_eventId_billing">
                                    Next - Billing <span class="glyphicon glyphicon-chevron-right"></span>
                                </button>
    
                            </div>
    
                        </div>
    
                    </sf:form>
    
                </div>
            </div>
    
        </div>
    </div>
</div>

<%@ include file="../shared/flows-footer.jsp" %>
