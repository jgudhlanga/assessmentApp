<?php require("head.php")?>
<?php require("backend.php")?>
<div class="row">
	<div class="col-md-12 <?= $showClass ?>">
		<div class="col-md-4">
			<h4> Installations Pre-check</h4>
			<?php if (version_compare(PHP_VERSION, '5.6.0', '>=')): ?>
				<div class="text-success">Your version of PHP is 5.6.0 or higher (detected <?= PHP_VERSION ?>).</div>
			<?php else: ?>
				<div class="text-danger">Your version of PHP is too low. You need PHP 5.6.0 or higher to use CakePHP (detected <?= PHP_VERSION ?>).</div>
			<?php endif; ?>

			<div><strong>Required PHP Extensions </strong></div>

			<?php if (extension_loaded('mbstring')): ?>
				<div class="text-success">PHP has the mbstring extension loaded.</div>
			<?php else: ?>
				<div class="text-danger">PHP does NOT have the mbstring extension loaded.</div>;
			<?php endif; ?>

			<?php if (extension_loaded('mysqli')): ?>
				<div class="text-success">PHP has the mysqli extension loaded.</div>
			<?php else: ?>
				<div class="text-danger">PHP does NOT have the mysqli extension loaded.</div>;
			<?php endif; ?>

			<?php if (extension_loaded('openssl')): ?>
				<div class="text-success">PHP has openssl extension loaded.</div>
			<?php elseif (extension_loaded('mcrypt')): ?>
				<div class="text-success">PHP has mcrypt extension loaded.</div>
			<?php else: ?>
				<div class="text-danger">PHP has openssl or mcrypt extension NOT loaded.</div>
			<?php endif; ?>

			<?php if (extension_loaded('intl')): ?>
				<div class="text-success">PHP has intl extension loaded.</div>
			<?php else: ?>
				<div class="text-danger">PHP has NOT intl extension loaded.</div>
			<?php endif; ?>
		</div>

		<div class="col-md-8">
			<div class="text-info">
				Provide your database credentials to create the database. Make sure they are correct
			</div>
			<form method="post" class="form-horizontal" id="form_1">
				<div class="input-group margin-top-20">
					<span class="input-group-addon add-on-min-width">Db Host</span>
					<input type="text" name="db_host"   class="form-control" placeholder="defaults to localhost">
				</div>
				<div class="input-group margin-top-20">
					<span class="input-group-addon add-on-min-width">Db User</span>
					<input type="text" name="db_user" class="form-control" placeholder="defaults to root">
				</div>
				<div class="input-group margin-top-20">
					<span class="input-group-addon add-on-min-width">Db Password</span>
					<input type="text"  name="db_pass"   class="form-control" placeholder="database password">
				</div>
				<div class="input-group margin-top-20">
					<span class="input-group-addon add-on-min-width">Db Name</span>
					<input type="text"  name="db_name"   class="form-control" placeholder="defaults to assessment_app">
				</div>
				<div class="input-group margin-top-20">
					<span class="input-group-addon add-on-min-width">App Home Url</span>
					<input type="text"  name="app_url" id="app_url"  class="form-control" placeholder="defaults to http://localhost:8765">
				</div>
				<div class="col-md-12 margin-top-20 margin-bottom-20 text-center">
					<div class="display-none text-info" id="results"></div>
				</div>
				<div class="row margin-top-20 text-center">
					<button class="btn btn-info" type="submit" name="command">
						Continue <i class="glyphicon glyphicon-chevron-right"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
	<?php if($message != ''): ?>
		<div class="col-md-8"><strong><?= $message ?></strong></div>
	<?php endif ?>
	<div class="col-md-8 <?= $showRedirect ?>">
		<div class="margin-bottom-20">
			<strong>
				Replace the config/app.php Datasources array details with the following details
			</strong>
		</div>
		<span>'host' => '<?=$dbHost?>'</span><br/>
		<span>'username' => '<?=$dbUser?>'</span><br/>
		<span>'password' => '<?=$dbPass?>'</span><br/>
		<span>'database' => '<?=$dbName?>'</span><br/>
		<div class="margin-top-20">
			<a class="btn btn-primary" href="<?=$appUrl?>">
				<i class="glyphicon glyphicon-home"></i>&nbsp;Redirect to App Home
			</a>
		</div>
	</div>
</div>
<?php require("footer.php") ?>