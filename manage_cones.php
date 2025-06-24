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


function uploadImage($file) {
    $targetDir = "uploads/"; 
    if (!is_dir($targetDir)) {
        mkdir($targetDir, 0777, true); 
    }
    $targetFile = $targetDir . basename($file["name"]);
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    
    $check = getimagesize($file["tmp_name"]);
    if ($check === false) {
        die("File is not an image.");
    }

    
    if (file_exists($targetFile)) {
        die("File already exists.");
    }

    
    if ($file["size"] > 5000000) {
        die("File is too large.");
    }

    
    if (!in_array($imageFileType, ["jpg", "jpeg", "png", "gif"])) {
        die("Only JPG, JPEG, PNG, and GIF files are allowed.");
    }

    // Upload the file
    if (move_uploaded_file($file["tmp_name"], $targetFile)) {
        return $targetFile; 
    } else {
        die("Error uploading file.");
    }
}


if (isset($_POST['add'])) {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $imagePath = uploadImage($_FILES['image']); 

    $stmt = $conn->prepare("INSERT INTO cones (name, description, price, image) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssds", $name, $description, $price, $imagePath);
    if ($stmt->execute()) {
        $_SESSION['message'] = "Cone added successfully!";
    } else {
        $_SESSION['message'] = "Error adding cone.";
    }
    $stmt->close();
}


if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $imagePath = null;

    
    if (!empty($_FILES['image']['name'])) {
        $imagePath = uploadImage($_FILES['image']); 
    }

    
    if ($imagePath) {
        $stmt = $conn->prepare("UPDATE cones SET name=?, description=?, price=?, image=? WHERE id=?");
        $stmt->bind_param("ssdsi", $name, $description, $price, $imagePath, $id);
    } else {
        $stmt = $conn->prepare("UPDATE cones SET name=?, description=?, price=? WHERE id=?");
        $stmt->bind_param("ssdi", $name, $description, $price, $id);
    }
    if ($stmt->execute()) {
        $_SESSION['message'] = "Cone updated successfully!";
    } else {
        $_SESSION['message'] = "Error updating cone.";
    }
    $stmt->close();
}


if (isset($_POST['delete'])) {
    $id = $_POST['id'];

    $stmt = $conn->prepare("DELETE FROM cones WHERE id=?");
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        $_SESSION['message'] = "Cone deleted successfully!";
    } else {
        $_SESSION['message'] = "Error deleting cone.";
    }
    $stmt->close();
}


$result = $conn->query("SELECT * FROM cones");
$cones = $result->fetch_all(MYSQLI_ASSOC);

$conn->close();
?>