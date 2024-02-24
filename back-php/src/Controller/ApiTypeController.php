<?php

namespace App\Controller;

use App\Controller\AbstractAPIController;
use App\Model\TypeManager;

class ApiTypeController extends AbstractAPIController
{
    private TypeManager $typeManager;

    public function __construct()
    {
        parent::__construct();
        $this->typeManager = new TypeManager();
    }

    public function getAllTypes(): string
    {
        $types = $this->typeManager->getAllTypes();

        return json_encode([
            'message' => 'Types des activitées retrouvées!',
            'types' => $types
        ]);
    }

    public function getTypeById(int $id): string
    {
        $type = $this->typeManager->getTypeById($id);

        if ($type) {
            return json_encode([
                'message' => 'Type trouvé !',
                'type' => $type
            ]);
        } else {
            return json_encode([
                'message' => 'Type non trouvé !'
            ]);
        }
    }
}
