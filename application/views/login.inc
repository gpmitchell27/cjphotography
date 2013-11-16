<div class="row-fluid">
		<div class="row-fluid" id="row-fluid2">
			<div class="span12">
    			<div class="span4 offset4">
						<legend class="center"><h4>ENTER USERNAME AND PASSWORD</h4></legend>
    					<div class="span9 offset1 well">
								<?php echo validation_errors('<p class="error">'); ?>
								<?php echo form_open("verifylogin"); ?>

								<div class="centeraddform">
								<label for="username">Username:</label>
								<input type="text" id="username" name="username" class="span9" value="" required/>
								<label for="password">Password:</label>
								<input type="password" id="password" name="password" class="span9" value="" required/>
								<input type="submit" class="btn-primary span9" value="Sign in" />
								</div>
								<?php echo form_close(); ?>
						</div>
				</div> <!-- end span4 offset 3 -->
			</div> <!-- end row-fluid -->
		</div> <!-- end row-fluid2 -->
	</header> <!-- end header -->
</div> <!-- end first row  -->