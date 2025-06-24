<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Cones</title>
    <link rel="stylesheet" href="view.css">
</head>
<body>
    <h1>View Cones</h1>
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
            
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "icecream_parlor";

            $conn = new mysqli($servername, $username, $password, $dbname);

            
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

           
            $sql = "SELECT * FROM cones";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                
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
                echo "<tr><td colspan='5'>No cones found.</td></tr>";
            }

            
            $conn->close();
            ?>
        </tbody>
    </table>
</body>
</html>