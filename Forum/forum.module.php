<?php

use Helpers\Hooks;

Hooks::addhook('routes', 'App\\Modules\\Forum\\Controllers\\Forum@routes');
