<?php

namespace App\Model;

use PDO;

class UserManager extends AbstractManager
{
    public const TABLE = 'user';

    public function addUser(string $pseudo, string $hashedPassword): void
    {
        $statement = $this->pdo->prepare("INSERT INTO " . static::TABLE . " (pseudo, password_hash) VALUES (:pseudo, :password)");
        $statement->bindValue('pseudo', $pseudo, PDO::PARAM_STR);
        $statement->bindValue('password', $hashedPassword, PDO::PARAM_STR);
        $statement->execute();
    }

    public function loginUser(string $username, string $password): array|false
    {
        $statement = $this->pdo->prepare("SELECT * FROM " . static::TABLE . " WHERE username=:username AND password=:password");
        $statement->bindValue('username', $username, PDO::PARAM_STR);
        $statement->bindValue('password', $password, PDO::PARAM_STR);
        $statement->execute();

        return $statement->fetch();
    }
}
