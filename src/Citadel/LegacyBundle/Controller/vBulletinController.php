<?php

namespace Citadel\LegacyBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class vBulletinController extends Controller
{
    public function showthreadAction()
    {
        var_dump(require_once '/home/ozfortress/web/showthread.php');
    }
}
