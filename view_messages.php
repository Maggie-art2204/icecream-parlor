<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Messages</title>
    <link rel="stylesheet" href="view.css">
</head>
<body>
    <h1>Messages</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Database connection
            $host = 'localhost';
            $dbname = 'users_db';
            $username = 'root';
            $password = '';

            try {
                // Create a PDO connection
                $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                // Fetch data from the messages table
                $stmt = $conn->query("SELECT * FROM messages ORDER BY created_at DESC");
                $messages = $stmt->fetchAll(PDO::FETCH_ASSOC);

                if (count($messages) > 0) {
                    // Loop through the messages and display them in the table
                    foreach ($messages as $message) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($message['id']) . "</td>";
                        echo "<td>" . htmlspecialchars($message['name']) . "</td>";
                        echo "<td>" . htmlspecialchars($message['email']) . "</td>";
                        echo "<td>" . htmlspecialchars($message['message']) . "</td>";
                        echo "<td>" . htmlspecialchars($message['created_at']) . "</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='5' style='text-align: center;'>No messages found.</td></tr>";
                }
            } catch (PDOException $e) {
                echo "<tr><td colspan='5' style='text-align: center;'>Error: " . $e->getMessage() . "</td></tr>";
            }

            // Close the connection
            $conn = null;
            ?>
        </tbody>
    </table>
</body>
</html>