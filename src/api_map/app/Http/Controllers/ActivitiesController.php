<?php

namespace App\Http\Controllers;

use App\Services\MapServiceInterface;
use Prettus\Validator\Contracts\ValidatorInterface;
use Prettus\Validator\Exceptions\ValidatorException;
use App\Http\Requests\ActivityCreateRequest;
use App\Http\Requests\ActivityUpdateRequest;
use App\Repositories\ActivityRepository;
use App\Validators\ActivityValidator;

/**
 * Class ActivitiesController.
 *
 * @package namespace App\Http\Controllers;
 */
class ActivitiesController extends Controller
{
    /**
     * @var ActivityRepository
     */
    protected $repository;

    /**
     * @var ActivityValidator
     */
    protected $validator;

    /**
     * @var MapServiceInterface
     */
    protected $mapService;

    /**
     * ActivitiesController constructor.
     *
     * @param ActivityRepository $repository
     * @param ActivityValidator $validator
     * @param MapServiceInterface $mapService
     */
    public function __construct(ActivityRepository $repository, ActivityValidator $validator, MapServiceInterface $mapService)
    {
        $this->repository = $repository;
        $this->validator  = $validator;
        $this->mapService = $mapService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function index()
    {
        $activities = $this->repository->all();
        $nonDistances = $this->repository->findWhere(['distance' => null]);
        foreach ($nonDistances as $nonDistance) {
            $nonDistance->update('distance', $this->mapService->getDistance($nonDistance->location));

        }

        return view('activities.index', compact('activities'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function create()
    {
        return view('activities.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  ActivityCreateRequest $request
     *
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Prettus\Validator\Exceptions\ValidatorException
     */
    public function store(ActivityCreateRequest $request)
    {
        try {

            $this->validator->with($request->all())->passesOrFail(ValidatorInterface::RULE_CREATE);
            $attributes = $request->all();
            $address = $request->input('location');
            $distance = $this->mapService->getDistance($address);
            $attributes['distance'] = $distance;
            $activity = $this->repository->create($attributes);

            $response = [
                'message' => 'Activity created.',
                'data'    => $activity->toArray(),
            ];

            return redirect()->route('activities.index')->with('message', $response['message']);
        } catch (ValidatorException $e) {

            return redirect()->back()->withErrors($e->getMessageBag())->withInput();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function show($id)
    {
        $activity = $this->repository->find($id);

        return view('activities.show', compact('activity'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View
     */
    public function edit($id)
    {
        $activity = $this->repository->find($id);

        return view('activities.edit', compact('activity'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  ActivityUpdateRequest $request
     * @param  string            $id
     *
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Prettus\Validator\Exceptions\ValidatorException
     */
    public function update(ActivityUpdateRequest $request, $id)
    {
        try {

            $this->validator->with($request->all())->passesOrFail(ValidatorInterface::RULE_UPDATE);

            $activity = $this->repository->update($request->all(), $id);

            $response = [
                'message' => 'Activity updated.',
                'data'    => $activity->toArray(),
            ];

            return redirect()->route('activities')->with('message', $response['message']);
        } catch (ValidatorException $e) {

            return redirect()->back()->withErrors($e->getMessageBag())->withInput();
        }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        $deleted = $this->repository->delete($id);

        return redirect()->back()->with('message', 'Activity deleted.');
    }
}
