<p class="lead">Online Shopping</p>
(<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>)

<div class="list-group">
    <c:forEach items="${categories }" var="category">
        <a href="/show/category/${category.id }/products" class="list-group-item"
           id="a_${category.name }">${category.name }</a>
    </c:forEach>
</div>