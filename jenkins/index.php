<?php
/**
 * This file only exists to redirect requests to this VM's port 80 (Apache)
 * to port 8080 (Jenkins).  If this file is removed Apache will list the
 * contents of this directory when polled.
 */
header('location: http://'.$_SERVER['SERVER_NAME'].':8080');