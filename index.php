<?php
require_once 'users/init.php';
if(isset($user) && $user->isLoggedIn()){
  Redirect::to($us_url_root.'users/account.php');
}else{
  Redirect::to($us_url_root.'usersc/login.php');
}
die();
?>

<?php

require_once 'users/init.php';
require_once $abs_us_root.$us_url_root.'usersc/includes/header.php';
require_once $abs_us_root.$us_url_root.'usersc/includes/navigation_NOT_LOGGED.php';
?>

  <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Blank Page
                            <small>Subheading</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-file"></i> Blank Page
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->



