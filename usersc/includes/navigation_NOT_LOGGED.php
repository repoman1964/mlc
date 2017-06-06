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
                <a class="navbar-brand" href="index.html">NOT LOGGED</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle=""><i class="fa fa-envelope fa-2x"></i></a>                  
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle=""><i class="fa fa-bell fa-2x"></i></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle=""><i class="fa fa-user fa-2x"></i></a>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href=""><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-bar-chart-o"></i> Metrics</a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-table"></i> Landing Pages</a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-edit"></i> Lead Magnets</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-envelope-o"></i> Email Campaigns <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="">Soap Opera Sequence</a>
                            </li>
                            <li>
                                <a href="">Seinfeld Sequence</a>
                            </li>                           
                        </ul>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-wrench"></i> LTV Tracker</a>
                    </li>  
                    <li>
                        <a href=""><i class="fa fa-fw fa-graduation-cap"></i> Leads Club University </a>
                    </li>
                    <li>
                        <a href=""><i class="fa fa-fw fa-clock-o"></i> Help/Support </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
	