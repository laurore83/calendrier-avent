<?php

namespace App\Controller;

use App\Controller\AbstractAPIController;
use App\Model\ConsumedManager;

class ApiConsumedController extends AbstractAPIController
{
    private ConsumedManager $consumedManager;

    public function __construct()
    {
        parent::__construct();
        $this->consumedManager = new ConsumedManager();
    }


    /**
     * $json must be a json object with {{user_id = 0 }, {activity_id = 0}, {day=date}}
     *
     * @param string $json
     * @return string
     */
    public function add(array $activity): string
    {
        $activity['day'] = date('Y-m-d');
        $this->consumedManager->add($activity);

        return json_encode([
            'message' => 'activity add !'
        ]);
    }

    public function setFav(string $json)
    {
        $activity = json_decode($json, true);
        $id = $activity['id'];
        $value = $activity['fav'];
        $this->consumedManager->add($id, $value);

        return json_encode([
            'message' => 'Fav set !'
        ]);
    }
}
