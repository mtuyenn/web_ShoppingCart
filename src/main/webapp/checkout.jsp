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
                <th>Số lượng</th>
                <th>Mô tả sản phẩm</th>
                <th class="right">Giá</th>
                <th class="right">Tổng số tiền</th>
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
                <td colspan="3" class="right"><b>Tổng cộng</b></td>
                <td class="right">${cart.formattedSubtotal}</td>
            </tr>
        </tbody>
    </table>

    <!-- Nút quay lại trang chủ mua tiếp -->
    <form action="cart" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Quay lại mua tiếp">
    </form>

    <form action="cart" method="post">
        <input type="hidden" name="action" value="confirm">
        <input type="submit" value="Xác nhận thanh toán">
    </form>
</body>
</html>
