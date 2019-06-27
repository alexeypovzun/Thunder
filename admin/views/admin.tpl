<div class="product_wrapper">
	<div class="product_info">
		<div class="product_item product_code"><?php print $this->code;?></div>
		<div class="product_item product_name"><?php print $this->name;?></div>
		<div class="product_item product_price"><?php print $this->price;?> грн</div>
		<div class="product_item product_stock"><?php print $this->stock;?> шт</div>
	</div>
	<div class="product_item image_wrapper">
		<img class="image" src="/images/catalog/<?php print $this->image; ?>">
	</div>
</div>