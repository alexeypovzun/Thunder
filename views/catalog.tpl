<a href="<?php print $this->slug; ?>">
	<div class="catalog_item_wrapper">
	    <div class="catalog_item catalog_image_wrapper">
			<img class="catalog_image" src="images/catalog/<?php print $this->image; ?>">
		</div>
		<div class="catalog_item_info">
			<div class="catalog_item catalog_product_name"><?php print $this->name;?> <?php print $this->code;?></div>
			<div class="catalog_item catalog_product_price"><?php print $this->price;?> грн.</div>
		</div>
	</div>
</a>