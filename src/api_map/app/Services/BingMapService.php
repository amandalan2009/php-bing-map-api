<?php
namespace App\Services;

use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;

/**
 * Class BingMapService
 *
 * @package namespace App\Services;
 */
class BingMapService implements MapServiceInterface
{

    public function getDistance(string $address){
        $response = Http::get( config('school.bingURL'). $address . '?key=' . config('school.bingKey'));
        $response->json();
        $response = $response['resourceSets'][0]['resources'][0]['point']['coordinates'];
        $distance =  $this->distance($response[0], $response[1], config('school.lat'), config('school.lon'));

        return round($distance, 8);
    }

    private function  distance($lat1, $lon1, $lat2, $lon2) {
        if (($lat1 == $lat2) && ($lon1 == $lon2)) {
            return 0;
        }
        else {
            $theta = $lon1 - $lon2;
            $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
            $dist = acos($dist);
            $dist = rad2deg($dist);
            $miles = $dist * 60 * 1.1515 * 1.609344;

            return $miles;
        }
    }
}
