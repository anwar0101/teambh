@extends('layouts.app')

@section('content')
  <div class="header-bg-color">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <h3> Search by Division </h3>
          <div class="list-group">
            @foreach ($divitions as $divition)
                <a href="{{ route('ads.index') }}" class="list-group-item"> {{ $divition->name }} </a>
            @endforeach
          </div>
        </div>
        <div class="col-md-9">
          <div class="row">
            <div class="col-md-12">
              <h1 class="text-center text-primary"> Welcome to {{ Voyager::setting("admin.title", "Koridbiki.com")}} </h1>
              <p class="text-center">
                  {{ Voyager::setting("home.welcome_message", "Buy and sell everything new and/or used like cars to mobile phones and computers ect or search for property,
                 jobs and more in Bangladesh - for free!") }}
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 top-category-gap">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h1 class="panel-title"> Browse our top categories </h1>
                </div>
                <div class="panel-body">
                  <div class="row">
                      @foreach ($poupulers as $cat)
                          <div class="col-md-3">
                            <a href="{{ route('ads.index') }}">
                              <p class="text-center"> <i class="fa {{ $cat->icon }} fa-2" aria-hidden="true"></i></p>
                              <h4 class="text-center text-primary"> {{ $cat->name }} </h4>
                            </a>
                          </div>
                      @endforeach
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="content-bg-color">
      <div class="row">

          @foreach ($categories as $cat)
              <div class="col-md-3">
                <div class="item-sty">
                  <a href="{{ route('ads.index') }}">
                    <p class="text-center"> <i class="fa {{ $cat->icon }} fa-2x" aria-hidden="true"></i></p>
                    <h4 class="text-center text-primary"> {{ $cat->name }} </h4>
                  </a>
                  <p class="text-justify">
                    {{ $cat->description }}
                  </p>
                </div>
              </div>
          @endforeach

      </div>
    </div>
  </div>
@endsection
