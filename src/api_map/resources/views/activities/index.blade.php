@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2> School Events Table </h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="/activities/create" title="Create a product"> <i class="fas fa-plus-circle"></i>
                </a>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p></p>
        </div>
    @endif
    <h1> </h1>
    <table class="table table-bordered table-responsive-lg">
        <tr>
            <th>ID</th>
            <th>Description</th>
            <th>Category</th>
            <th>Event Time</th>
            <th>Organisers</th>
            <th>Participants</th>
            <th>Location</th>
            <th>Distance</th>
            <th>Created At</th>
            <th>Updated At</th>
        </tr>
        @foreach ($activities as $activity)
            <tr>
                <td>{{ $activity->id }}</td>
                <td>{{ $activity->description }}</td>
                <td>{{ $activity->category }}</td>
                <td>{{ $activity->event_time }}</td>
                <td>{{ $activity->organisers }}</td>
                <td>{{ $activity->participants }}</td>
                <td>{{ $activity->location }}</td>
                <td>{{ $activity->distance }}</td>
                <td>{{ $activity->created_at }}</td>
                <td>{{ $activity->updated_at }}</td>
            </tr>
        @endforeach
    </table>

@endsection
