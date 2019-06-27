<div class="product_wrapper">
	<div class="product_title"><?php print $this->name;?></div>
	      <div class="product_panel">
	          <div class="product_panel_home"><a href="./">На главную</a></div>
	          <div class="product_panel_brandname">Производитель: <?php print $brandname;?></div>
	          <div class="product_panel_code">Модель: <?php print $this->code;?></div>
	      </div>

	      <div class="product_intro_wrapper">

	            <div class="product_intro_image">
	               <div class="product_image_wrapper">
						<img class="product_image" src="/images/catalog/<?php print $this->image; ?>">
					</div>
	            </div>

                <div class="product_intro_info_wrapper">

                     <div class="product_intro_info">

                     	<div class="product_intro_short">
	            			<div class="product_intro_short_title">Краткое описание</div>
	            			<div class="product_intro_short_description"><?php print $this->short;?>...</div>
	            			<div class="product_intro_short_read"><a href="#readmore">Читать полностью →</a></div>
	            		</div>

		            	<div class="product_intro_cart">
		                	<div class="product_price"><?php print $this->price;?> грн.</div>
		                	<a href="?cart"><div class="product_cart_btn">Купить</div></a>
		            	</div>

	            	</div>

	            	<div class="product_images_wrapper">Больше картинок</div>

                </div>

	      </div>

	      <div class="product_description">
	      		<a name="readmore"></a><?php print $this->description;?>
	      </div>
</div>