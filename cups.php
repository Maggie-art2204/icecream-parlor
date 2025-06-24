<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CUP'S</title>
    <link rel="stylesheet" href="categories.css">
</head>
<body>
    <h1 class="head">CUP'S</h1>
    <section class="category" id="category">
        <div class="box-container">
            <?php
            include 'manage_cups.php'; 
            foreach ($cups as $cup) {
                echo "
                <div class='box'>
                    <img src='{$cup['image']}' alt='{$cup['name']}'>
                    <h3>{$cup['name']}</h3>
                    <p>{$cup['description']}</p>
                    <div class='price'>Rs.{$cup['price']}</div>
                    <a href='bill/CU_bill.html' class='btn'>Order</a>
                </div>";
            }
            ?>
        </div>
    </section>
    <button class="button" onclick="window.location.href='home.html'"> Go Back</button>    
</body>
</html>