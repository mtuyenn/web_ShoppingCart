<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

    <h1>Your cart</h1>

    <table border="1">
        <thead>
            <tr>
                <th>Số lượng</th>
                <th>Mô tả sản phẩm</th>
                <th class="right">Giá</th>
                <th class="right">Tổng số tiền</th>
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

    <p><b>Để thay đổi số lượng</b>, nhập số lượng mới và click vào nút Update.</p>

    <form action="cart" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Tiếp tục mua sắm">
    </form>

    <form action="cart" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" value="Thanh toán">
    </form>

</body>
</html>
