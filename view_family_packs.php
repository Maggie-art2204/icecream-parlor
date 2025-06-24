<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="view.css">
    <title>View Family Packs</title>
</head>
<body>
    <h1>View Family Packs</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price (₹)</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Database connection
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "icecream_parlor";

            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Fetch all family packs from the database
            $sql = "SELECT * FROM family_packs";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>{$row['id']}</td>
                            <td>{$row['name']}</td>
                            <td>{$row['description']}</td>
                            <td>₹{$row['price']}</td>
                            <td><img src='{$row['image']}' alt='{$row['name']}'></td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='5'>No family packs found.</td></tr>";
            }

            // Close the connection
            $conn->close();
            ?>
        </tbody>
    </table>
</body>
</html>