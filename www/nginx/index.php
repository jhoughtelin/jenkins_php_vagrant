<?php
/**
 * Default browser forward for Nginx web requests (port 80) to Jenkins web server (8080) 
 *
 * @author I_HAX0RED_that_single_line@gitphp.com
 */
header('location: http://'.$_SERVER['SERVER_NAME'].':8080');