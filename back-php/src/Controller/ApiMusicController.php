<?php

namespace App\Controller;

use App\Model\MusicManager;

class ApiMusicController extends AbstractAPIController
{
    private MusicManager $musicManager;

    public function __construct()
    {
        parent::__construct();
        $this->musicManager = new MusicManager();
    }

    public function getRandomMusic(): string
    {
        $music = $this->musicManager->getRandomMusic();

        if ($music) {
            return json_encode(['message' => 'Musique trouvée', 'music' => $music]);
        } else {
            return json_encode(['message' => 'Pas de musique trouvée']);
        }
    }
}
