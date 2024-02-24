<?php

namespace App\Model;

use PDO;

class MusicManager extends AbstractManager
{
    public const TABLE = 'music';

    public function getRandomMusic(): array|false
    {
        $statement = $this->pdo->query("SELECT * FROM " . static::TABLE .
            " ORDER BY RAND() LIMIT 1");
        return $statement->fetch();
    }
}
