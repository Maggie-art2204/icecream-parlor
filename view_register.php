<?php
// Database connection
$conn = new mysqli('localhost', 'root', '', 'users_db');

// Check connection
if ($conn->connect_error) {
    die('Connection Failed: ' . $conn->connect_error);
}

// Fetch data from the database
$sql = "SELECT Username, Email, Password FROM register";
$result = $conn->query($sql);

// Close the connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="view.css">
    <title>View User Data</title>    
</head>
<body>
    <h1>User Data</h1>
    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($result->num_rows > 0) {
                // Output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr>
                            <td>{$row['Username']}</td>
                            <td>{$row['Email']}</td>
                            <td>{$row['Password']}</td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='3'>No data found</td></tr>";
            }
            ?>
        </tbody>
    </table>
</body>
</html>