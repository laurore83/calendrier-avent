<?php

namespace App\Controller;

use App\Controller\AbstractAPIController;
use App\Model\UserManager;

class ApiUserController extends AbstractAPIController
{
    private UserManager $userManager;

    public function __construct()
    {
        parent::__construct();
        $this->userManager = new UserManager();
    }

    public function registerUser(): string
    {
        // Récupére JSON de la requête
        $jsonInput = json_decode(file_get_contents('php://input'), true);

        if (empty($jsonInput['pseudo']) || empty($jsonInput['password'])) {
            return json_encode(['message' => 'Entrée invalide. Pseudo et mot de passe sont requis.']);
        }
        $pseudo = $jsonInput['pseudo'];
        $password = $jsonInput['password'];
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $this->userManager->addUser($pseudo, $hashedPassword);

        var_dump($pseudo);
        var_dump($password);

        return json_encode(['message' => 'Utilisateur créé avec succès !', 'pseudo' => $pseudo]);
    }

    public function loginUser(): string
    {
        // Récupére JSON de la requête
        $jsonInput = json_decode(file_get_contents('php://input'), true);

        if (empty($jsonInput['username']) || empty($jsonInput['password'])) {
            return json_encode(['message' => 'Entrée invalide. username et mot de passe sont requis.']);
        }
        $username = $jsonInput['username'];
        $password = $jsonInput['password'];
        // $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        $user = $this->userManager->loginUser($username, $password);

        if ($user) {
            return json_encode(['message' => 'Connexion réussie !', 'user' => $user]);
        } else {
            return json_encode(['message' => 'Connexion échouée !']);
        }
    }
}
