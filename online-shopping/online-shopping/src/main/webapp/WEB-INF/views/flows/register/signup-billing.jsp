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
                    <h4>Sign Up - Personal</h4>
                </div>
                <div class="panel-body">
                    <sf:form method="POST" class="form-horizontal" id="billingForm"
                             modelAttribute="billing">
                        <div class="form-group">
                            <label class="control-label col-md-4" for="addressLineOne">Address
                                Line One</label>
                            <div class="col-md-8">
                                <sf:input path="addressLineOne" type="text" class="form-control"
                                          placeholder="Enter Address Line One"/>
                                <sf:errors path="addressLineOne" cssClass="help-block"
                                           element="em"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="addressLineTwo">Address
                                Line Two</label>
                            <div class="col-md-8">
                                <sf:input path="addressLineTwo" type="text" class="form-control"
                                          placeholder="Enter Address Line Two"/>
                                <sf:errors path="addressLineTwo" cssClass="help-block"
                                           element="em"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="city">City</label>
                            <div class="col-md-8">
                                <sf:input path="city" type="text" class="form-control"
                                          placeholder="Enter City Name"/>
                                <sf:errors path="city" cssClass="help-block" element="em"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4" for="postalCode">Postal
                                Code</label>
                            <div class="col-md-8">
                                <sf:input path="postalCode" type="number" class="form-control"
                                          placeholder="XXXXXX" maxlength="6"/>
                                <sf:errors path="postalCode" cssClass="help-block" element="em"/>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-md-4" for="state">State</label>
                            <div class="col-md-8">
                                <sf:input path="state" type="text" class="form-control"
                                          placeholder="Enter State Name"/>
                                <sf:errors path="state" cssClass="help-block" element="em"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="country">Country</label>
                            <div class="col-md-8">
                                <sf:input path="country" type="text" class="form-control"
                                          placeholder="Enter Country"/>
                                <sf:errors path="country" cssClass="help-block" element="em"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-offset-4 col-md-8">
                                <!-- submit button inside the form -->
                                <button type="submit" class="btn btn-primary"
                                        name="_eventId_personal">
                                    <span class="glyphicon glyphicon-chevron-left"></span>Previous
                                </button>

                                <button type="submit" class="btn btn-primary"
                                        name="_eventId_confirm">
                                    Next<span class="glyphicon glyphicon-chevron-right"></span>
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