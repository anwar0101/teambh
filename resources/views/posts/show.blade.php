@extends('layouts.app')

@section('content')
  <div class="container">
    <div class="content-bg-color">
      <h3> {{ $post->title }} </h3>
      <p> For sale by {{ $post->user->name }} {{ $post->created_at->toDayDateTimeString() }}, {{ $post->place->name }}, {{ $post->place->divition->name }} </p>

      <div class="row">
        <div class="col-md-8">
          <!-- carousel section start here -->
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              @if ($post->photo2)
                  <li data-target="#myCarousel" data-slide-to="1"></li>
              @endif
              @if ($post->photo3)
                  <li data-target="#myCarousel" data-slide-to="2"></li>
              @endif
              @if ($post->photo4)
                  <li data-target="#myCarousel" data-slide-to="3"></li>
              @endif
            </ol>
            <!-- Wrapper for slides start -->
            <div class="carousel-inner">

              <div class="item active">
                <img class="img-responsive" src="{{ asset(str_replace_last('public', 'storage', $post->photo1))}}" alt="photo 1">
                <div class="carousel-caption">
                  <h3> Koridbiki.com </h3>
                </div>
              </div>

              @if ($post->photo2)
                  <div class="item">
                    <img class="img-responsive" src="{{ asset(str_replace_last('public', 'storage', $post->photo2))}}" alt="photo 2">
                    <div class="carousel-caption">
                      <h3> Koridbiki.com </h3>
                    </div>
                  </div>
              @endif

              @if ($post->photo3)
                  <div class="item">
                    <img class="img-responsive" src="{{ asset(str_replace_last('public', 'storage', $post->photo3))}}" alt="photo 3">
                    <div class="carousel-caption">
                      <h3> Koridbiki.com </h3>
                    </div>
                  </div>
              @endif

              @if ($post->photo4)
                  <div class="item">
                    <img class="img-responsive" src="{{ asset(str_replace_last('public', 'storage', $post->photo4))}}" alt="photo 4">
                    <div class="carousel-caption">
                      <h3> Koridbiki.com </h3>
                    </div>
                  </div>
              @endif

            </div> <!-- Wrapper for slides start -->

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
              <span class="sr-only">Next</span>
            </a>
          </div> <hr> <!-- carousel section start here -->

          <div class="row">
            <div class="col-md-8">
              <p> <b class="style-for-money"> Tk {{ $post->price }} </b> @if ($post->negatiable == 1)
                  (Negatiable)
              @else
                  (Fixed)
              @endif </p> <hr>
              <p>
                {{ $post->description }}
              </p>
            </div>
            <div class="col-md-4">
              <ul class="list-group">
                @foreach ($post->extra_values as $key => $extra)
                    <li class="list-group-item"> <p> <b> {{ $key }}: </b> {{ $extra }} </p> </li>
                @endforeach

                <li class="list-group-item"> <a href="{{ route('favorite.check', $post->id) }}">  @if($post->is_favorited)<i class="fa fa-star"></i> Unfavourite this ad @else <i class="fa fa-star-o"></i> Save ad as Fovourite @endif </a> </li>
                <li class="list-group-item"> <a href="#"> <i class="fa fa-ban"></i> Report this ad </a> </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <p> Contact now with seller </p>
          <ul class="list-group">
            <li class="list-group-item">
              <b> <i class="fa fa-mobile-phone fa-fw fa-lg"></i> {{ $post->contact }}  </b>
            </li>
          </ul>
          @if ($post->user->role->name == 'member')
              <p> Visit member's page </p>
              <ul class="list-group">
                <a href="#" class="list-group-item">
                  <div class="row">
                    <div class="col-md-4">
                      <img class="img-responsive" src="/img/my.jpeg" alt="Los Angeles">
                    </div>
                    <div class="col-md-8">
                      <p> Trust SecuritiesBD </p>
                      <p> Your Trusted Partner</p>
                    </div>
                  </div>
                </a>
              </ul>
              <p> Visit member's page </p>
              <ul class="list-inline">
                <a href="#"> <i class="fa fa-facebook-square fa-3x text-info"></i> </a> &nbsp; &nbsp;
                <a href="#"> <i class="fa fa-twitter-square fa-3x"></i> </a> &nbsp; &nbsp;
                <a href="#"> <i class="fa fa-google-plus-square fa-3x text-danger"></i> </a>
              </ul>
          @endif
        </div>
      </div>
    </div>
    <!-- show the similar product to user section start -->
    <div class="content-bg-color">
      <h3> Similar Ads </h3> <hr>
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            @foreach ($posts as $pos)
                @if ($pos->id != $post->id)
                    <a href="{{ route('post.show', $pos->id) }}">
                      <div class="panel panel-default item-sty">
                        <div class="panel-body">
                          <div class="row media">
                            <div class="col-md-3 col-sm-4">
                              <div class="media-left">
                                <img class="img-responsive" src="{{ asset(str_replace_last('public', 'storage', $pos->photo1))}}" alt="{{ $pos->title }}">
                              </div>
                            </div>
                            <div class="col-md-7 col-sm-8">
                              <div class="media-body">
                                <p class="media-heading"> {{ $pos->title }} </p>
                                <p class="text-muted"> <b class="label label-default"> member </b> &nbsp; <wbr> {{ $post->created_at->diffForHumans() }}, <wbr> {{ $post->place->name }},<wbr> {{ $post->sub_category->name }} </p>
                                <p> <b> Tk {{ $post->price }} </b> </p>
                              </div>
                            </div>
                            <div class="col-md-2">
                              <div class="media-right">
                                <p class="label label-success"> <i class="fa fa-shield"></i> TOP PAID </p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </a>
                @endif
            @endforeach

          </div>
        </div>
    </div> <!-- show the similar product to user section start -->

  </div>
@endsection
