<?php

namespace App\Controller;

use App\Controller\AbstractAPIController;

class ApiExampleController extends AbstractAPIController
{
    public function example(): string
    {
        return json_encode([
            'message' => 'Hello wilder !'
        ]);
    }
}
