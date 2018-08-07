<?php

ini_set('date.timezone', 'UTC');

if ( $_SERVER['REQUEST_URI'] == '/health' ) {
    print "OK";
} else {
    phpinfo();
}
