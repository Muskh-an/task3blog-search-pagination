<?php

include "config.php";

$id = $_GET['id'];

$result = mysqli_query(
    $conn,
    "SELECT * FROM posts WHERE id=$id"
);

$row = mysqli_fetch_assoc($result);

if (isset($_POST['update'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];

    mysqli_query(
        $conn,
        "UPDATE posts
     SET title='$title',
         content='$content'
     WHERE id=$id"
    );

    header("Location: read.php");
}

?>

<form method="POST">

    Title:

    <input type="text"
        name="title"
        value="<?php echo $row['title']; ?>">

    <br><br>

    Content:

    <textarea name="content"><?php echo $row['content']; ?></textarea>

    <br><br>

    <input type="submit"
        name="update"
        value="Update">

</form>