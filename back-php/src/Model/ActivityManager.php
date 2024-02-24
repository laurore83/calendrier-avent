<?php

namespace App\Model;

use PDO;

class ActivityManager extends AbstractManager
{
    public const TABLE = 'activity';

    public function getOneByRand(): array
    {
        $query = 'SELECT * FROM ' . static::TABLE . ' ORDER BY RAND() LIMIT 1';
        return $this->pdo->query($query)->fetch();
    }
    public function getOneById($id): array
    {
        $query = 'SELECT * FROM ' . static::TABLE . ' WHERE id = :id';
        $statement = $this->pdo->prepare($query);
        $statement->bindParam(':id', $id, PDO::PARAM_INT);
        $statement->execute();
        $result = $statement->fetch(PDO::FETCH_ASSOC);
        return $result;
    }
}
