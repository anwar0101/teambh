@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
      <div class="col-md-4">
        {{-- left nav --}}
        @include('includes.user-left-nav')
        {{-- end left nav --}}
      </div>
      <div class="col-md-8">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h1 class="panel-title"> Favourites </h1>
          </div>
          <div class="panel-body">
            @forelse ($favorites as $favorite)
                <a href="{{ route('post.show', $favorite->post->id) }}">
                  <div class="panel panel-default item-sty">
                    <div class="panel-body">
                      <div class="row media">
                        <div class="col-md-3 col-sm-4">
                          <div class="media-left">
                            <img class="img-responsive" src="{{ asset(str_replace_last('public', 'storage', $favorite->post->photo1))}}" alt="Post image">
                          </div>
                        </div>
                        <div class="col-md-7">
                          <div class="media-body">
                            <p class="media-heading"> {{ $favorite->post->title }} </p>
                            <p class="text-muted"> <b class="label label-default"> member </b> &nbsp; <wbr> {{ $favorite->post->created_at->diffForHumans() }}, <wbr> {{ $favorite->post->place->name }},<wbr> {{ $favorite->post->sub_category->name }} </p>
                            <p> <b> Tk {{ $favorite->post->price }} </b> </p>
                          </div>
                        </div>
                        <div class="col-md-2">
                          <div class="media-right">
                            <p class="label label-warning"> <i class="fa fa-star-o"></i> FAVORITE </p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </a>
            @empty
                <div class="text-center">
                  <h3> You haven't marked any ads as favorite yet. </h3>
                  <p> Click on the star symbol on any ad to save it as a favorite. </p>
                  <p> <i class="fa fa-star-o fa-5x text-primary"></i> </p>
                  <p> Start<a href="{{ route('ads.index') }}"> to browse </a>ads to find ads you would like to favorite.</p>
                </div>
            @endforelse

          </div>
        </div>
      </div>
    </div>
</div>
@endsection
