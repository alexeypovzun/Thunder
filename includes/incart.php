<?php
$sql = "SELECT count(id) as count_in_cart FROM cart WHERE hash_id='$hash_id'";
$result = $db->query($sql);
	while ($row = $result->fetch_assoc()) {
		$count_in_cart = $row["count_in_cart"];
	}
$price = 0;
$sql = "SELECT p.price as price FROM cart c, products p WHERE c.product_id=p.id and c.hash_id ='$hash_id'";
$result = $db->query($sql);
echo $db->error;
while ($row = $result->fetch_assoc()) {
	$price = $price + $row["price"];
}
echo $count_in_cart.' товаров<br>на '.$price.' грн';
?>