<!DOCTYPE html>
<html>
<head>
  <title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
    $('#selectall').click(function() {
        $(this.form.elements).filter(':checkbox').prop('checked', this.checked);

        if ($(this).is(':checked')) {
    		$(this).siblings('label').html('Randomize none');
	  } else {
		    $(this).siblings('label').html(' Randomize all');
	  }



    });



});
</script>


<script>
$(document).ready(function(){
    $('#boxid').click(function() {
  		if ($(this).is(':checked')) {
    		$(this).siblings('label').html('checked');
	  } else {
		    $(this).siblings('label').html(' not checked');
	  }
	});
});
</script>



</head>
<body>


<div id="page-wrapper">
	<div class="container-fluid">
		<!-- Page Heading -->
		<div class="row">
			<div class="col-sm-12">
				<h1 class="page-header">
					Welcome to UserSpice
					<small>An Open Source PHP User Management Framework</small>
				</h1>


<form method="POST" action="get_new_page.php">

  
  <input type="checkbox" id="selectall"><label for="boxid">Select all</label><br>
  
       
  <input type="checkbox" name="headline" class="randomizer_cbs"> Headline<br>
  <input type="checkbox" name="subheadline" class="randomizer_cbs"> Subheadline<br>
  <input type="checkbox" name="heroImage" class="randomizer_cbs"> Hero Image<br>
  <input type="checkbox" name="layout" class="randomizer_cbs"> Layout<br>
  <input type="checkbox" name="leadmagnet" class="randomizer_cbs"> Lead Magnet<br>
  <input type="checkbox" name="bullet" class="randomizer_cbs"> Bullets<br>
  <input type="checkbox" name="colorscheme" class="randomizer_cbs"> Color Scheme<br>
  <input type="checkbox" name="cta" class="randomizer_cbs"> CTA<br>

  <input type="submit" name="randomize_page" value="Get Headline"/>

</form>



</body>
</html>


