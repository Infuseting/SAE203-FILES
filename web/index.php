<?php
include 'config.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Improvz - Improve your shop</title>
    <link rel="stylesheet" href="/assets/css/style.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
</head>
<body>
<div class="min-h-full overflow-x-hidden overflow-hidden" >
    <?php include 'router.php' ?>
</div>
<script src="/assets/js/script.js"></script>
<script type="module" src="/assets/js/preline.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>