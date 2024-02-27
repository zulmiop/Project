<style> #productListTable {
    width: 100%; /* Make the table fill its container */
    border-collapse: collapse; /* Collapse the borders between table cells */
}

#productListTable th,
#productListTable td {
    padding: 8px; /* Add padding inside table cells */
    text-align: left; /* Align text to the left within cells */
    vertical-align: middle; /* Center content vertically within cells */
    border-bottom: 1px solid #ddd; /* Add bottom border to table cells */
}

#productListTable th {
    background-color: #f2f2f2; /* Set background color for table header */
    font-weight: bold; /* Make table header text bold */
}

#productListTable tbody tr:hover {
    background-color: #f5f5f5; /* Change background color on hover */
}

#productListTable tbody tr td:first-child {
    width: 100px; /* Set width for the first column containing images */
}

#productListTable img {
    max-width: 100px; /* Limit the maximum width of product images */
    height: auto; /* Maintain aspect ratio */
}
</style>
<div class="container">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3">
            <%@include file="share/sidebar.jsp" %>
        </div>
        <!-- Product Display -->
        <div class="col-md-9">
            <!-- Breadcrumb -->
            <div class="row">
                <div class="col-lg-12">
                    <c:if test="${userClickAllProducts == true}">
                        <script>window.categoryId = '';</script>
                        <ol class="breadcrumb">
                            <li><a href="/home">Home</a></li>
                            <li class="active"><span>All Products</span></li>
                        </ol>
                    </c:if>
                    <c:if test="${userClickCategoryProducts == true}">
                        <script>window.categoryId = '${category.id}';</script>
                        <ol class="breadcrumb">
                            <li><a href="/home">Home</a></li>
                            <li class="active"><a href="#">Category</a></li>
                            <li class="active"><span>${category.name}</span></li>
                        </ol>
                    </c:if>
                </div>
            </div>
            <!-- Product Table -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="container-fluid">
                        <div class="table-responsive">
                            <table id="productListTable" class="table table-striped table-borderd">
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Name</th>
                                        <th>Brand</th>
                                        <th>Price</th>
                                        <th>Qty. Available</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Sample Product Data -->
                                    <tr>
                                        <td><img src="https://m.media-amazon.com/images/I/41d18SoZ-yL._SX300_SY300_QL70_FMwebp_.jpg" alt="Product 4" style="width: 100px; height: auto;"></td>
                                        <td>Acer Aspire 5 Gaming Laptop</td>
                                        <td>Acer</td>
                                        <td>54990</td>
                                        <td>40</td>
                                        <td><a href="/product/4" class="btn btn-primary">View Details</a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="https://m.media-amazon.com/images/I/61M7USAEIlL._SX679_.jpg" alt="Product 12" style="width: 100px; height: auto;"></td>
                                        <td>Product 12</td>
                                        <td>La Opala</td>
                                        <td>420</td>
                                        <td>10</td>
                                        <td><a href="/product/12" class="btn btn-primary">View Details</a></td>
                                    </tr>
                                    <!-- Add more product rows as needed -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>