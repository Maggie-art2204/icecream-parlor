<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONE</title>
    <link rel="stylesheet" href="categories.css">
</head>
<body>
    <h1 class="head">CONES</h1>
    <section class="category" id="category">
        <div class="box-container">
            <?php
            include 'manage_cones.php'; // Include the PHP script to fetch data
            foreach ($cones as $cone) {
                echo "
                <div class='box'>
                    <img src='{$cone['image']}' alt='{$cone['name']}'>
                    <h3>{$cone['name']}</h3>
                    <p>{$cone['description']}</p>
                    <div class='price'>Rs.{$cone['price']}</div>
                    <a href='bill/C_bill.html' class='btn'>Order</a>
                </div>";
            }
            ?>
        </div>
    </section>
    <button class="button" onclick="window.location.href='home.html'"> Go Back</button>    
</body>
</html>