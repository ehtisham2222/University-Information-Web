<?php
$host = "localhost";
$user = "root";
$password = "";
$dbname = "project";

$conn = new mysqli($host, $user, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $university = $_POST['university'];
    $review = $_POST['review'];

    if (!empty($email) && !empty($password) && !empty($university) && !empty($review)) {
        $sql = "INSERT INTO reviews (email, password, university, review_text) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssss", $email, $password, $university, $review);
        $stmt->execute();
        $stmt->close();
    }
}

// fetch review
$reviews = $conn->query("SELECT university, review_text, submitted_at FROM reviews ORDER BY submitted_at DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Review Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 0;
              background-image:url('uni.jpg');
            background-size:cover;
             background-repeat: no-repeat;
             background-attachment: fixed;
  background-position: center;
        }

        .header, .footer {
            background-color: #0047ab;
            color: white;
            text-align: center;
            padding: 15px;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #0047ab;
        }

        .review-box {
            background-color: #f9f9f9;
            border-left: 5px solid #0047ab;
            padding: 10px 15px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .review-box h4 {
            margin: 0 0 5px;
            color: #0047ab;
        }

        .review-box p {
            margin: 0;
        }

        .timestamp {
            font-size: 12px;
            color: #666;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            text-decoration: none;
            color: #0047ab;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>University Information Web</h1>
    </div>

    <div class="container">
        <h2>✅ Thank you! Your review has been submitted.</h2>

        <div class="back-link">
            <a href="review.html">← Submit Another Review</a>
        </div>

        <h2>Public Reviews</h2>

        <?php if ($reviews->num_rows > 0): ?>
            <?php while($row = $reviews->fetch_assoc()): ?>
                <div class="review-box">
                    <h4><?= htmlspecialchars($row['university']) ?></h4>
                    <p><?= htmlspecialchars($row['review_text']) ?></p>
                    <p class="timestamp">Submitted on: <?= $row['submitted_at'] ?></p>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <p>No reviews yet. Be the first to write!</p>
        <?php endif; ?>
    </div>
    <div class="footer">
    
             <p>&copy; 2025 University Information Web. All rights reserved. | Powered by XAMPP & PHP </p>

    </div>

</body>
</html>

<?php $conn->close(); ?>
