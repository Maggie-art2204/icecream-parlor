<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KULFI</title>
    <link rel="stylesheet" href="categories.css">
</head>
<body>
    <h1 class="head">KULFI'S</h1>
    <section class="category" id="category">
        <div class="box-container">
            <?php
            include 'manage_kulfi.php'; 
            foreach ($kulfis as $kulfi) {
                echo "
                <div class='box'>
                    <img src='{$kulfi['image']}' alt='{$kulfi['name']}'>
                    <h3>{$kulfi['name']}</h3>
                    <p>{$kulfi['description']}</p>
                    <div class='price'>Rs.{$kulfi['price']}</div>
                    <a href='bill/K_bill.html' class='btn'>Order</a>
                </div>";
            }
            ?>
        </div>
    </section>
    <button class="button" onclick="window.location.href='home.html'"> Go Back</button>    
</body>
</html>