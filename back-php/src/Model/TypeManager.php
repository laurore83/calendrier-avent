<?php

namespace App\Model;

use PDO;

class TypeManager extends AbstractManager
{
    public const TABLE = 'type';

    public function getAllTypes(): array
    {
        $query = 'SELECT * FROM ' . self::TABLE;
        $statement = $this->pdo->query($query);

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getTypeById(int $typeId): array
    {
        $query = 'SELECT * FROM ' . self::TABLE . ' WHERE id = :type_id';
        $statement = $this->pdo->prepare($query);
        $statement->bindValue('type_id', $typeId, PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetch(PDO::FETCH_ASSOC);
    }
}
