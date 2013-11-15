	<section id="form">
		<div>
			<span class="lobster offwhite">Like My Work?</span>
			<h2 class="grey narrow">Please fill out this short form and we will get back to you ASAP.</h2>
				<?php echo validation_errors('<p class="error">');
				$attributes = array('id' => 'contactform');
				echo form_open('sendemail', $attributes); ?>
					<fieldset>
					<label for="name">Name:</label><br>
					<input type="input" id="name" name="name" placeholder="Name" maxlength="140" class="form_textfield" required/><br>
					<label for="phone">Phone:</label><br>
					<input type="input" id="phone" name="phone" maxlength="140" class="form_textfield" placeholder="Phone Number" required/><br>
					<label for="email">Email Address:</label><br>
					<input type="input" id="email" name="email" maxlength="140" class="form_textfield" placeholder="Email Address" required/><br>
					<p>Briefly let me know what we can help you with. Please allow 24 hours for a reply</p>
					</fieldset>
				<textarea class="form_textarea resize" id="message" name="email_message" rows="10" cols="60" placeholder="Your Message" required/></textarea>
				<p><input type="submit" value="" class="mybtn" /></p>
				<?php echo form_close(); ?>
			<article id="sidepics">
				<p><img src="<?php echo site_url('files/images/sample1.jpg');?>" alt="sample 1" /></p>
				<p><img src="<?php echo site_url('files/images/sample2.jpg');?>" alt="sample 2" /></p>
				<p><img src="<?php echo site_url('files/images/sample3.jpg');?>" alt="sample 3" /></p>
			</article>
		</div>
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