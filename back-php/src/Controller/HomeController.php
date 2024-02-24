<?php

namespace App\Controller;

class HomeController extends AbstractAPIController
{
    /**
     * Display home page
     */
    // public function index(): string
    // {
    //     return $this->twig->render('Home/index.html.twig');
    // }

    public function test()
    {
        $jsonInput = json_decode(file_get_contents('php://input'), true);
        return json_encode(['pseudo' => $jsonInput["key"]]);
    }
}
