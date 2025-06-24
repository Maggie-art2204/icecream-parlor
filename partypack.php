<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PARTY PACK</title>
    <link rel="stylesheet" href="categories.css">
</head>
<body>
    <h1 class="head">PARTY PACK'S</h1>
    <section class="category" id="category">
        <div class="box-container">
            <?php
            include 'manage_party_packs.php'; 
            foreach ($partyPacks as $pack) {
                echo "
                <div class='box'>
                    <img src='{$pack['image']}' alt='{$pack['name']}'>
                    <h3>{$pack['name']}</h3>
                    <p>{$pack['description']}</p>
                    <div class='price'>Rs.{$pack['price']}</div>
                    <a href='bill/P_bill.html' class='btn'>Order</a>
                </div>";
            }
            ?>
        </div>
    </section>
    <button class="button" onclick="window.location.href='home.html'"> Go Back</button>    
</body>
</html>