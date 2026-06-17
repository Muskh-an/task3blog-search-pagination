<?php

include "config.php";

$limit = 5;

$page = isset($_GET['page']) ? $_GET['page'] : 1;

$offset = ($page - 1) * $limit;

$search = "";

if (isset($_GET['search'])) {
    $search = $_GET['search'];
}

/* Count Total Posts */
$count_result = mysqli_query($conn, "SELECT COUNT(*) as total FROM posts");

$count_row = mysqli_fetch_assoc($count_result);

$total_posts = $count_row['total'];

$total_pages = ceil($total_posts / $limit);

/* Search + Pagination Query */
$query = "SELECT * FROM posts
          WHERE title LIKE '%$search%'
          OR content LIKE '%$search%'
          ORDER BY id DESC
          LIMIT $limit OFFSET $offset";

$result = mysqli_query($conn, $query);

?>

<!DOCTYPE html>
<html>

<head>
    <title>View Posts</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>


<body>

    <h2>All Posts</h2>

    <!-- Search Form -->
    <form method="GET">
        <input type="text"
            name="search"
            placeholder="Search posts"
            value="<?php echo $search; ?>">

        <button type="submit">Search</button>
    </form>

    <br>

    <a href="dashboard.php">Dashboard</a>

    <br><br>

    <table class="table table-bordered table-striped">

        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Content</th>
            <th>Date</th>
            <th>Action</th>
        </tr>

        <?php while ($row = mysqli_fetch_assoc($result)) { ?>

            <tr>

                <td><?php echo $row['id']; ?></td>

                <td><?php echo $row['title']; ?></td>

                <td><?php echo $row['content']; ?></td>

                <td><?php echo $row['created_at']; ?></td>

                <td>

                    <a href="update.php?id=<?php echo $row['id']; ?>">
                        Edit
                    </a>

                    |

                    <a href="delete.php?id=<?php echo $row['id']; ?>">
                        Delete
                    </a>

                </td>

            </tr>

        <?php } ?>

    </table>

    <br><br>

    <!-- Pagination -->

    <?php
    for ($i = 1; $i <= $total_pages; $i++) {
    ?>
        <a href="read.php?page=<?php echo $i; ?>&search=<?php echo $search; ?>">
            <?php echo $i; ?>
        </a>
    <?php
    }
    ?>

    <br><br>

    <a href="dashboard.php">Back to Dashboard</a>
    </div>
</body>

<body>

    <div class="container mt-4">

</html>