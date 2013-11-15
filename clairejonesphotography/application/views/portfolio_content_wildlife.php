<section id="gallery">
	<div class="pnav">
		<ul>
			<li><a href="/clairejonesphotography/portfolio">NATURE</a><span class="divider">|<span></li>
			<li><a href="#" class="active">WILD-LIFE</a><span class="divider">|<span></li>
			<li><a href="/clairejonesphotography/wedding">WEDDING</a><span class="divider">|<span></li>
			<li><a href="/clairejonesphotography/portraits">PORTRAITS</a><span class="divider">|<span></li>
			<li><a href="/clairejonesphotography/landscape">LANDSCAPE</a></li>
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
	<section id="subfooter">
		<div>
			<h4>LOOKING FOR A PHOTOGRAPHER?</h4>
			<p>Claire Jones Photography is the official homepage for Claire Jones. Feel free to look through the portfolio and feel free to contact me if you are looking for a great photographer.</p>
		</div>
		<div>
			<h4>Reserve Today, Call! 800-664-0706 </h4>
			<p>Award winning wedding and portrait photography in beautiful Destin Florida. Claire shoots artful original and fun family photographs on the beach, or in the studio. Claire also love to photograph babies, maternity, couples, and engagements</p>
		</div>
		<div>
			<h4>SUB HEADER</h4>
				<ul>
					<li> - Wildlife</li>
					<li> - Nature</li>
					<li> - Portraits</li>
					<li> - Weddings</li>
					<li> - Still-Life</li>
				</ul>
		</div>
	</section>