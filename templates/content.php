<div class="content_wrapper">
<?php
	$uri = $_SERVER['REQUEST_URI'];

	if ($uri == "/") {		echo '<div class="catalog_wrapper">';
		include('includes/catalog.php');
		echo '</div>';	}

    if (preg_match('/^\/thunder-(.*)$/',$uri))
	{
		echo '<div class="single_wrapper">';		include('includes/product.php');
		echo '</div>';	}

	if ($uri == "/cart") {
		echo '<div class="cart_wrapper">';
		include('includes/cart.php');
		echo '</div>';
	}
?>
</div>