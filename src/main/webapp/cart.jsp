<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="public/cart.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <h1 >Shopping Cart</h1>

    <table>
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <!-- Cart items will be dynamically populated here -->
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">Total:</td>
                <td id="cartTotal">Rs.0.00</td>
                <td></td>
            </tr>
        </tfoot>
    </table>

    <div>
        <a href="checkout">Proceed to Checkout</a>
    </div>

    <script>
        // You can use JavaScript to dynamically populate the cart items
        // and update the cart total based on your application logic
        const cartTotal = document.getElementById('cartTotal');
        cartTotal.textContent = calculateCartTotal(); // Replace with your logic to calculate the cart total

        function calculateCartTotal() {
            // Implement your logic to calculate the cart total
            return '$0.00';
        }
    </script>
</body>
</html>