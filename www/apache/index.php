<?php
/**
 * Default browser forward for Apache web requests (port 9000) to Jenkins web server (8080) 
 *
 * @author I_HAX0RED_that_single_line@gitphp.com
 */
header('location: http://'.$_SERVER['SERVER_NAME'].':8080');