<?php
$sql = "INSERT INTO cart SET hash_id ='$hash_id', product_id='$id'";
$db->query($sql);
echo $db->error;
?>
<meta http-equiv="refresh" content="0; url=../<?php print $homedir; ?>" />