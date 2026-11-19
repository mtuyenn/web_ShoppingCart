<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import = "murach.data.ProductIO" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css?v=3" type="text/css"/>
</head>
<body>

    <h1>CD list</h1>

    <table border="1">
        <thead>
            <tr>
                <th>Description</th>
                <th class="right">Price</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>86 (the band) - True Life Songs and Pictures</td>
                <td class="right"><%= ProductIO.getProduct("8601").getFormattedPrice() %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="8601">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

            <tr>
                <td>Paddlefoot - The first CD</td>
                <td class="right"><%= ProductIO.getProduct("pf01").getFormattedPrice() %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="pf01">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

            <tr>
                <td>Paddlefoot - The second CD</td>
                <td class="right"><%= ProductIO.getProduct("pf02").getFormattedPrice() %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="pf02">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

            <tr>
                <td>Joe Rut - Genuine Wood Grained Finish</td>
                <td class="right"><%= ProductIO.getProduct("jr01").getFormattedPrice() %></td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="jr01">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>
        </tbody>
    </table>

</body>
</html>
