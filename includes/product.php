<?php
if (preg_match('/^.*\/thunder-(.*)/',$uri,$matches)) {
	$code = $matches[1];
}

$buy = 0;

if (preg_match('/^.*\/thunder-(.*)(\?cart)/',$uri,$matches)) {
	$code = $matches[1];
	$buy = 1;
}

include('models/uri.model');

$id_new = new Uri($db,$code);
$id = $id_new->getID();

if ($buy == 1) {	include('includes/addtocart.php');}

include('models/gallery.model');
include('controllers/gallery.class');
$gallery_new = new Gallery($db,$id);
$images = $gallery_new->getImages();

include('models/product.model');
include('controllers/product.class');

$product_new = new Model($db,$id);
$product = $product_new->getProduct();

function DrawProduct($product,$brandname) {
     $product->Draw($brandname);
}

DrawProduct($product,$brandname);
?>