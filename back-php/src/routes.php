<?php

// list of accessible routes of your application, add every new route here
// key : route to match
// values : 1. controller name
//          2. method name
//          3. (optional) array of query string keys to send as parameter to the method
// e.g route '/item/edit?id=1' will execute $itemController->edit(1)
return [
    '' => ['HomeController', 'index',],
    'api/demo' => ['ApiExampleController', 'example'],
    'api/register' => ['ApiUserController', 'registerUser'],
    'api/login' => ['ApiUserController', 'loginUser'],
    'api/getRandomMusic' => ['ApiMusicController', 'getRandomMusic'],
    'api/getOneActivity' => ['ApiActivityController', 'getOne', ['id']],
    'api/setFav' => ['ApiConsumedController', 'setFav', ['value']],
    'api/types' => ['ApiTypeController', 'getAllTypes'],
    'api/typeById' => ['ApiTypeController', 'getTypeById', ['id']],
    'test' => ['HomeController', 'test',],
];
