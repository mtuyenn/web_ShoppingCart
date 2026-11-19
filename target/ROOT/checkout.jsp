<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout - Shopping Cart</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

    <h1>Checkout</h1>
    <p>Thanks for your order.</p>

    <table border="1">
        <thead>
            <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th class="right">Price</th>
                <th class="right">Amount</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${cart.items}">
                <tr>
                    <td>${item.quantity}</td>
                    <td>${item.product.description}</td>
                    <td class="right">${item.product.formattedPrice}</td>
                    <td class="right">${item.formattedTotal}</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="3" class="right"><b>Subtotal</b></td>
                <td class="right">${cart.formattedSubtotal}</td>
            </tr>
        </tbody>
    </table>

    <!-- Nút quay lại trang chủ mua tiếp -->
    <form action="cart" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

</body>
</html>
