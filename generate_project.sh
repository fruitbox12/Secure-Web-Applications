#!/bin/bash

# Define project directory
project_dir="/var/www/thecomfycandles.com/html"

# Create project directory and subdirectories
mkdir -p "$project_dir"
mkdir -p "$project_dir/products"
mkdir -p "$project_dir/auth"
mkdir -p "$project_dir/uploads"
mkdir -p "$project_dir/assets/css"
mkdir -p "$project_dir/assets/js"
mkdir -p "$project_dir/includes"

# Create PHP files with basic placeholders
touch "$project_dir/index.php"
touch "$project_dir/contact.php"
touch "$project_dir/auth/login.php"
touch "$project_dir/auth/register.php"
touch "$project_dir/auth/checkout.php"
touch "$project_dir/auth/cart.php"
touch "$project_dir/config/config.php"

# Create product pages with placeholders (you can add more)
touch "$project_dir/products/product1.php"
touch "$project_dir/products/product2.php"

# Create header and footer files
touch "$project_dir/includes/header.php"
touch "$project_dir/includes/footer.php"

# Create CSS and JS files
touch "$project_dir/assets/css/styles.css"
touch "$project_dir/assets/js/script.js"

# Add basic content to PHP files
cat <<EOL > "$project_dir/index.php"
<!DOCTYPE html>
<html>
<head>
    <title>Comfy Candles - Home</title>
</head>
<body>
    <header>
        <?php include 'includes/header.php'; ?>
    </header>
    <section>
        <h1>Welcome to Comfy Candles</h1>
        <p>Discover our beautiful collection of flowers and candles.</p>
    </section>
    <footer>
        <?php include 'includes/footer.php'; ?>
    </footer>
</body>
</html>
EOL

# Repeat the above pattern for other PHP files as needed.

# Create a basic header and footer
cat <<EOL > "$project_dir/includes/header.php"
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="products/product1.php">Products</a></li>
            <li><a href="contact.php">Contact</a></li>
        </ul>
    </nav>
EOL

cat <<EOL > "$project_dir/includes/footer.php"
    <footer>
        <p>&copy; 2023 Comfy Candles</p>
    </footer>
</body>
</html>
EOL

# Create a basic config file
cat <<EOL > "$project_dir/config/config.php"
<?php
// Database Configuration
\$db_host = 'localhost';
\$db_user = 'username';
\$db_password = 'password';
\$db_name = 'ecommerce_db';

// Establish a database connection
\$conn = mysqli_connect(\$db_host, \$db_user, \$db_password, \$db_name);

// Check the connection
if (\$conn === false) {
    die("Error: Could not connect to the database. " . mysqli_connect_error());
}
?>
EOL

echo "PHP project structure generated. Remember to add your content and database details."
