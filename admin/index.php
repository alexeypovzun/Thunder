<?php
include('../config/conf.php');
include('../config/db.php');
?>
<html>

<head>
	<title><?php print $sitename; ?> :: Управление</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../css/normalize.css">
	<link rel="stylesheet" href="../css/admin.css">
</head>

<body>
<div class="wrapper">
	<h1>Загрузка товаров</h1>

	<div class="load_wrapper">
    	<?php include('form.php'); ?>
    </div>

	<h1>Товары в каталоге</h1>

	<div class="products_wrapper">
		<?php include('catalog.php'); ?>
	</div>

</div>
</body>

</html>