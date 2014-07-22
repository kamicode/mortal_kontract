<?php
/**
 * Created by PhpStorm.
 * User: kamimonk
 * Date: 22/07/14
 * Time: 6:13 PM
 */

class MKConnector {

    //private static $initialized = false;
    private static $response = array();

    private function init()
    {
        self::$response = array();
    }

    public function connect($url)
    {
        self::init();
        self::$response = file_get_contents(urlencode($url));
        return self::$response;
    }

} 