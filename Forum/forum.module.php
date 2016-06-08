<?php
/**
* UserApplePie v3 Forum Plugin
* @author David (DaVaR) Sargent
* @email davar@thedavar.net
* @website http://www.userapplepie.com
* @version 1.0.1
* @release_date 04/27/2016
**/

use Helpers\Hooks;

Hooks::addhook('routes', 'App\\Modules\\Forum\\Controllers\\Forum@routes');

/** Define Current Version of UAP **/
define('UAPForumVersion', 'v1.0.1');
