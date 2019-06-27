<form enctype="multipart/form-data" action="load.php" method="POST">
	<input name="loadproduct" type="hidden" value="yes">
	<input name="MAX_FILE_SIZE" type="hidden" value="100000" />
		<div class="form_block"><div class="form_txt">
				Название товара
				<input name="name" type="text" value="" required>
			</div>
			<div class="form_txt">
				Артикул товара
				<input name="code" type="text" value="" required>
			</div>
			<div class="form_txt">
				Цена товара
				<input name="price" type="text" value="">
			</div>
			<div class="form_txt">
				Количество
				<input name="stock" type="text" value="1">
			</div>
			<div class="form_txt">
				Скидка
				<input name="discount" type="text" value="">
			</div>
		</div><div class="form_block">
		    <div class="form_txt_desc">Описание товара</div>

			<textarea name="description"></textarea>

		    <div class="form_txt">
		    	Изображения для загрузки в каталог
		    	<input name="userfile[]" type="file" multiple="true" />
		    </div>

		    <div class="form_txt">
		    	<input type="submit" value="Готово" />
		    </div>
	    </div>
</form>