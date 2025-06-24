<?php
$host = 'localhost';
$dbname = 'users_db';
$username = 'root';
$password = '';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    
    $stmt = $conn->prepare("INSERT INTO messages (name, email, message) VALUES (:name, :email, :message)");
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':message', $message);
    $stmt->execute();

    echo "Message sent successfully!";
} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}

$conn = null;
?>