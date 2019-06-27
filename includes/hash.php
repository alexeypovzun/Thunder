<?php
$cookie = md5($hostname);

	if (!isset($_COOKIE[$cookie])) {

		$my_hash = md5(mt_rand(1111,9999).date("U"));
		setcookie($cookie, $my_hash, time()+3600);

		$sql = "INSERT INTO hashes SET `hash`='$my_hash'";
		$db->query($sql);
	} else {
		$my_hash = $_COOKIE[$cookie];
	}

	$hash_id = 0;

	$sql = "SELECT id as hash_id FROM hashes WHERE hash='$my_hash'";
		$result = $db->query($sql);
			while ($row = $result->fetch_assoc()) {
				$hash_id = $row["hash_id"];
			}

return $hash_id;
?>