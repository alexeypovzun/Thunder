<?php
include('models/catalog.model');
include('controllers/catalog.class');

$products_new = new Model($db);
$products = $products_new->getProducts();

function DrawGallary($products) {
	for ($i=0;$i<count($products);$i++) {
       $products[$i]->Draw();
	}
}

DrawGallary($products);
?>