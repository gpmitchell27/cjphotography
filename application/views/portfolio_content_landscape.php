<section id="gallery">
	<div class="pnav">
		<ul>
			<li><a href="/clairejonesphotography/index.php/home/portfolio">NATURE</a><span class="divider">|<span></li>
			<li><a href="/clairejonesphotography/index.php/home/wildlife">WILD-LIFE</a><span class="divider">|<span></li>
			<li><a href="/clairejonesphotography/index.php/home/wedding">WEDDING</a><span class="divider">|<span></li>
			<li><a href="/clairejonesphotography/index.php/home/portraits">PORTRAITS</a><span class="divider">|<span></li>
			<li><a href="#" class="active">LANDSCAPE</a></li>
		</ul>
	</div>
	<div class="pagnav">
		<ul class="pag_nav">
			<li><?php echo $links; ?></li>
		</ul>
	</div>
	
	<span class="lobster offwhite">Portfolio</span>
		<div>
		<?php
			foreach($results as $data) { ;?>
			<div class="img">
			  	 <a class="fancybox" rel="group" href="<?php echo $data->photo_url;?>">
			  	 <img src="<?php echo $data->thumb_url; ?>" alt="<?php echo $data->title ?>" width="300" height="130">
			  	 </a>
			  	 <h4><?php echo $data->title ?></h4>
			 	<div class="desc"><?php echo $data->description ?></div>
			</div>

			<?php }; ?>
	</section>
	