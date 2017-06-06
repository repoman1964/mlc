<?php
/*
UserSpice 4
An Open Source PHP User Management System
by the UserSpice Team at http://UserSpice.com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
?>
<?php
require_once 'users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/header.php';
require_once $abs_us_root.$us_url_root.'usersc/includes/navigation_LOGGED.php';
?>

<?php if (!securePage($_SERVER['PHP_SELF'])){die();} ?>



<?php
    if(isset($_POST['randomize_page'])){
    	if (isset($_POST['headline'])) {
    	        $headlines = $db->query("SELECT headline FROM headlines ORDER BY RAND() LIMIT 1");
				$headline = $headlines->first();
    	        }        

    	if (isset($_POST['subheadline'])) {
    	        $subheadlines = $db->query("SELECT sub_headline FROM sub_headlines ORDER BY RAND() LIMIT 1");
				$subheadline = $subheadlines->first();
    	        }
    	
    	if (isset($_POST['heroImage'])) {
    	        $hero_images = $db->query("SELECT hero_image FROM hero_images ORDER BY RAND() LIMIT 1");
		$hero_image = $hero_images->first();
    	        }

    	if (isset($_POST['layout'])) {
    	        $layouts = $db->query("SELECT layout FROM layouts ORDER BY RAND() LIMIT 1");
		$layout = $layouts->first();
    	        }

    	if (isset($_POST['leadmagnet'])) {
    	       $lead_magnets = $db->query("SELECT lead_magnet FROM lead_magnets ORDER BY RAND() LIMIT 1");
		$lead_magnet = $lead_magnets->first();
    	        }

    	if (isset($_POST['bullet'])) {
    	       $bullets = $db->query("SELECT bullet FROM bullets ORDER BY RAND() LIMIT 1");
		$bullet = $bullets->first();
    	        }

    	if (isset($_POST['colorscheme'])) {
    	       $color_schemes = $db->query("SELECT color_scheme FROM color_schemes ORDER BY RAND() LIMIT 1");
		$color_scheme = $color_schemes->first();
    	        }

		if (isset($_POST['cta'])) {
    	       $ctas = $db->query("SELECT cta FROM ctas ORDER BY RAND() LIMIT 1");
		$cta = $ctas->first();
    	        }


    	
    	                                                                      
        
		
		// echo $headline->headline;
    }
    else {
    echo" dhur";
    }

?>

<div id="page-wrapper">
	<div class="container-fluid">
		<!-- Page Heading -->
		<div class="row">
			<div class="col-sm-12">
				<h1 class="page-header">
					<?php echo $headline->headline; ?><br>
					<small><?php echo $subheadline->sub_headline; ?></small><br>
					<small><?php echo $hero_image->hero_image; ?></small><br>
					<small><?php echo $layout->layout; ?></small><br>
					<small><?php echo $lead_magnet->lead_magnet; ?></small><br>
					<small><?php echo $bullet->bullet; ?></small><br>
					<small><?php echo $color_scheme->color_scheme; ?></small><br>
					<small><?php echo $cta->cta; ?></small><br>
				</h1>

				<h1>Reload or refresh page on button click using Jquery</h1>
				<input type="button" value="Refresh Page" id="btnRefresh"><br><br>
			</div>
		</div>
	</div>
</div>




<script>
$(document).ready(function(){
	$("#btnRefresh").click(function() {
     location.reload(true);
});
    
});
</script>
				



			</div> <!-- /.col -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->
</div> <!-- /.wrapper -->


<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->

<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>
