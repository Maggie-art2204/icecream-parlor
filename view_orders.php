<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <link rel="stylesheet" href="view.css">
</head>
<body>
    <h1>Order Details</h1>
    <table>
        <thead>
            <tr>
                <th>Order ID</th>
                <th>Customer Name</th>
                <th>Flavour</th>
                <th>Quantity</th>
                <th>Price (₹)</th>
                <th>Order Date</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Database connection
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "icecream_parlor";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Fetch data from the orders table
            $sql = "SELECT * FROM orders ORDER BY order_date DESC"; // Assuming you have an `order_date` column
            $result = $conn->query($sql);

            // Check if there are any records
            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row['id'] . "</td>";
                    echo "<td>" . $row['customer_name'] . "</td>";
                    echo "<td>" . $row['flavor'] . "</td>";
                    echo "<td>" . $row['quantity'] . "</td>";
                    echo "<td>₹" . $row['price'] . "</td>";
                    echo "<td>" . $row['order_date'] . "</td>"; // Assuming you have an `order_date` column
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='6' style='text-align: center;'>No orders found.</td></tr>";
            }

            // Close the connection
            $conn->close();
            ?>
        </tbody>
    </table>
</body>
</html>