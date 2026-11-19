<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css?v=3" type="text/css"/>
</head>
<body>

    <h1>Your cart</h1>

    <table border="1">
        <thead>
            <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th class="right">Price</th>
                <th class="right">Amount</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${cart.items}">
                <tr>
                    <td>
                        <form action="cart" method="post">
                            <input type="hidden" name="productCode" value="${item.product.code}">
                            <input type="text" name="quantity" value="${item.quantity}" style="width: 35px;">
                            <input type="submit" value="Update">
                        </form>
                    </td>
                    <td>${item.product.description}</td>
                    <td class="right">${item.product.formattedPrice}</td>
                    <td class="right">${item.formattedTotal}</td>
                    <td>
                        <form action="cart" method="post">
                            <input type="hidden" name="productCode" value="${item.product.code}">
                            <input type="hidden" name="quantity" value="0">
                            <input type="submit" value="Remove Item">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity and click on the Update button.</p>

    <form action="cart" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

    <form action="cart" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" value="Checkout">
    </form>

</body>
</html>
