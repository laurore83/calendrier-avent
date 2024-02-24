<?php

namespace App\Controller;

use App\Controller\AbstractAPIController;
use App\Model\ActivityManager;
use App\Model\ConsumedManager;
use App\Model\TypeManager;

class ApiActivityController extends AbstractAPIController
{
    private ActivityManager $activityManager;

    public function __construct()
    {
        parent::__construct();
        $this->activityManager = new ActivityManager();
    }

    public function getOne(int $id)
    {
        $activity = $this->activityManager->getOneById($id);
        return json_encode($activity);
    }

    // public function getOne(int $userId)
    // {
    //     // $consumedManager = new ConsumedManager();
    //     // $typeManager = new TypeManager();
    //     // $consumedActivities = $consumedManager->getActivitiesbyUserId($userId);
    //     // $consumedActivitiesId = array_map(fn ($arr) => $arr['activity_id'], $consumedActivities);
    //     $activity = $this->activityManager->getOneByRand();
    //     // $n = 0;
    //     // while (!in_array($activity['id'], $consumedActivitiesId) || $n > 10) {
    //     //     $n += 1;
    //     //     $activity = $this->activityManager->getOneByRand();
    //     // }
    //     // $activity['user_id'] = $userId;
    //     // $consumedManager->add($activity);
    //     return json_encode($activity);
    // }
}
