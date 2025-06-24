<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAMILY PACK'S</title>
    <link rel="stylesheet" href="categories.css">
</head>
<body>
    <h1 class="head">FAMILY PACK'S</h1>
    <section class="category" id="category">
        <div class="box-container">
            <?php
            include 'manage_family_packs.php'; // Include the PHP script to fetch data
            foreach ($familyPacks as $familyPack) {
                echo "
                <div class='box'>
                    <img src='{$familyPack['image']}' alt='{$familyPack['name']}'>
                    <h3>{$familyPack['name']}</h3>
                    <p>{$familyPack['description']}</p>
                    <div class='price'>Rs.{$familyPack['price']}</div>
                    <a href='bill/F_bill.html' class='btn'>Order</a>
                </div>";
            }
            ?>
        </div>
    </section>
    <button class="button" onclick="window.location.href='home.html'"> Go Back</button>    
</body>
</html>