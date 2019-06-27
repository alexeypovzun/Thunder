<?php
include('../config/conf.php');
$db = include('../config/db.php');
if (isset($_POST['loadproduct'])) {
    $name = mysql_escape_string(htmlspecialchars(strip_tags(trim($_POST['name']))));
    $code = mysql_escape_string(htmlspecialchars(strip_tags(trim($_POST['code']))));

    $exist = 0;
    $sql = "SELECT count(id) as exist FROM products WHERE name='$name' or code='$code'";
	$result = $db->query($sql);
		while ($row = $result->fetch_assoc()) {
			$exist = $row["exist"];
		}

	if ($exist == 0) {

		$price = mysql_escape_string(htmlspecialchars(strip_tags(trim($_POST['price']))));
        $price = (int)$price;

	    $description = mysql_escape_string(htmlspecialchars(strip_tags(trim($_POST['description']))));

	    $stock = mysql_escape_string(htmlspecialchars(strip_tags(trim($_POST['stock']))));
        $stock = (int)$stock;

		$slug = strtolower($brandname.'-'.$code);
	    $sql = "INSERT INTO products SET name='$name', code='$code', price='$price', description='$description', stock='$stock', slug='$slug'";
			$db->query($sql);
			echo $db->error;

		$sql = "SELECT id as last_id FROM products ORDER BY id DESC LIMIT 1";
		$result = $db->query($sql);
			while ($row = $result->fetch_assoc()) {
				$id_product = $row["last_id"];
			}

		$discount = mysql_escape_string(htmlspecialchars(strip_tags(trim($_POST['discount']))));
		$discount = (int)$discount;
		if ($discount > 0) {
			$sql = "INSERT INTO discounts SET discount='$discount', product_id='$id_product'";
				$db->query($sql);
				echo $db->error;
		}

		$exts = array("jpg","jpeg","png","JPG","JPEG","PNG");

		if (isset($_FILES['userfile'])) {
		    for ($i=0;$i<count($_FILES['userfile']['name']);$i++) {
				$ext = pathinfo($_FILES['userfile']['name'][$i], PATHINFO_EXTENSION);
	            if (in_array($ext, $exts)) {
		            $hash = md5($id_product.$i.date("U"));
			    	$image = $hash.".".$ext;
					move_uploaded_file($_FILES['userfile']['tmp_name'][$i],'../'.$catimgdir.'/'.$image);
					$sql = "INSERT INTO images SET product_id='$id_product', image='$image'";
					$db->query($sql);
					echo $db->error;
					if ($i==0) {$topimage = $image;}
	            }
		    }
		    $sql = "UPDATE products SET image='$topimage' WHERE id='$id_product'";
			$db->query($sql);
			echo $db->error;
		}
	}
header("Location: /admin/");
}
?>