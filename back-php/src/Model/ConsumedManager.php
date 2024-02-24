<?php

namespace App\Model;

use PDO;

class ConsumedManager extends AbstractManager
{
    public const TABLE = 'consumed';

    public function add(array $activity): void
    {
        $query = 'INSERT INTO ' . self::TABLE . ' (user_id, activity_id, day) VALUES(:user_id, activity_id, day)';

        $statement = $this->pdo->prepare($query);
        $statement->bindValue('user_id', $activity['user_id'], PDO::PARAM_INT);
        $statement->bindValue('user_id', $activity['activity_id'], PDO::PARAM_INT);
        $statement->bindValue('day', $activity['day'], PDO::PARAM_STR);

        $statement->execute();
    }

    public function setFav($id, $value): void
    {
        $query = 'SET ' . self::TABLE . ' SET fav = :fav WHERE id = :id';

        $statement = $this->pdo->prepare($query);
        $statement->bindValue('id', $id, PDO::PARAM_INT);
        $statement->bindValue('fav', $value, PDO::PARAM_INT);

        $statement->execute();
    }

    public function getActivitiesbyUserId(int $userId): array
    {
        $query = 'SELECT a.* FROM activities AS a
                  JOIN ' . self::TABLE . ' AS c ON a.id = c.activity_id
                  WHERE c.user_id = :user_id';

        $statement = $this->pdo->prepare($query);
        $statement->bindValue('user_id', $userId, PDO::PARAM_INT);
        $statement->execute();

        return $statement->fetchAll();
    }
}
