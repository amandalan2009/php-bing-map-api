<?php
namespace App\Services;

use Illuminate\Support\Facades\Http;

/**
 * Class BingMapService
 *
 * @package namespace App\Services;
 */
class BingMapService implements MapServiceInterface
{

    public function getPoint(string $address){

        /** @var sting $address */
 //       $response = Http::get( config('school.bingURL'). $address . '?key=' . config('school.bingKey'));

//        dump("Hellp");
    }
}
