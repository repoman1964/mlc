<?php
/*
UserSpice 4
An Open Source PHP User Management System
by the UserSpice Team at http://UserSpice.com

Feb 02 2016 - Ported US3.2.1 top-nav

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

// Signup
$lang = array_merge($lang,array(
	"SIGNUP_TEXT"			=> "Register",
	"SIGNUP_BUTTONTEXT"		=> "Register Me",
	"SIGNUP_AUDITTEXT"		=> "Registered",
	));

// Signin
$lang = array_merge($lang,array(
	"SIGNIN_FAIL"			=> "** FAILED LOGIN **",
	"SIGNIN_TITLE"			=> "Please Log In",
	"SIGNIN_TEXT"			=> "Log In",
	"SIGNOUT_TEXT"			=> "Log Out",
	"SIGNIN_BUTTONTEXT"		=> "Login",
	"SIGNIN_AUDITTEXT"		=> "Logged In",
	"SIGNOUT_AUDITTEXT"		=> "Logged Out",
	));

//Navigation
$lang = array_merge($lang,array(
	"NAVTOP_HELPTEXT"		=> "Help",
	));

$query = $db->query("SELECT * FROM email");
$results = $query->first();

//Value of email_act used to determine whether to display the Resend Verification link
$email_act=$results->email_act;

?>
  <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">LOGGED IN</a>
            </div>

<div class="collapse navbar-collapse navbar-top-menu-collapse navbar-right">
            <ul class="nav navbar-nav ">
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-comments-o fa-2x"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>                       
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope fa-2x"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>

                    <li class="dropdown hidden-xs"><a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-2x fa-user"></i> <?php echo ucfirst($user->data()->username);?><b class="caret"></b></a> <!-- regular user menu -->
                        <ul class="dropdown-menu"> <!-- open tag for User dropdown menu -->

                            <li><a href="<?=$us_url_root?>users/account.php"><i class="fa fa-fw fa-user"></i> Profile</a></li>
                        <?php if($settings->messaging == 1){ ?>
                            <li><a href="<?=$us_url_root?>users/messages.php"><i class="fa fa-fw fa-envelope"></i><?=$msgC?> Messages</a></li>
                        <?php } ?>

                                     <!-- regular user menu link -->

                            <?php if (checkMenu(2,$user->data()->id)){  //Links for permission level 2 (default admin) ?>
                                <!-- <li class="divider"></li> -->
                                <li><a href="<?=$us_url_root?>users/admin.php"><i class="fa fa-fw fa-cogs"></i> Admin Dashboard</a></li> <!-- regular Admin menu link -->
                            <?php } // is user an admin ?>
                            <li class="divider"></li>
                            <li><a href="<?=$us_url_root?>users/logout.php"><i class="fa fa-fw fa-power-off"></i> Logout</a></li> <!-- regular Logout menu link -->
                        </ul> <!-- close tag for User dropdown menu -->
                </li>
               <li class="hidden-sm hidden-md hidden-lg"><a href="<?=$us_url_root?>users/logout.php"><i class="fa fa-fw fa-sign-out"></i> Logout</a></li> <!-- regular Hamburger logout menu link -->

                <li class="dropdown">                    
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                 <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="dashboard.php"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="metrics.php"><i class="fa fa-fw fa-bar-chart-o"></i> Metrics</a>
                    </li>
                    <li>
                        <a href="landingpages.php"><i class="fa fa-fw fa-table"></i> Landing Pages</a>
                    </li>
                    <li>
                        <a href="leadmagnets.php"><i class="fa fa-fw fa-edit"></i> Lead Magnets</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-envelope-o"></i> Email Campaigns <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="soapopera.php">Soap Opera Sequence</a>
                            </li>
                            <li>
                                <a href="seinfeld.php">Seinfeld Sequence</a>
                            </li>                           
                        </ul>
                    </li>
                    <li>
                        <a href="ltvtracker.php"><i class="fa fa-fw fa-wrench"></i> LTV Tracker</a>
                    </li>  
                    <li>
                        <a href="university.php"><i class="fa fa-fw fa-graduation-cap"></i> Leads Club University </a>
                    </li>
                    <li>
                        <a href="support.php"><i class="fa fa-fw fa-clock-o"></i> Help/Support </a>
                    </li>
                </ul>                    
            </div>
            <!-- /.navbar-collapse -->
        </nav>
