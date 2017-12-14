@extends('layouts.app')

@section('content')
  <div class="container">
    <div class="content-bg-color">
      <div class="row">

        <div class="col-md-3">
          <form class="" action="{{ route('ads.index') }}" method="get">
            <div class="input-group">

              <select class="form-control" name="divition" onchange="this.form.submit()">
                <optgroup label="Select Division">
                  <option value=""> All Divitions </option>
                  @foreach ($divitions as $divition)
                      <option value="{{ $divition->id }}" @if ($divitionFilter==$divition->id)
                          selected
                      @endif> {{ $divition->name }} </option>
                  @endforeach
                </optgroup>
              </select>
                <span class="input-group-btn">
                  <button type="submit" class="btn btn-default"> <i class="fa fa-map-marker"></i> </button>
                </span>
            </div>
          </form>
        </div>

        <div class="col-md-3">
          <form class="" action="{{ route('ads.index') }}" method="get">
            <div class="input-group">

              <select class="form-control" name="category" onchange="this.form.submit()">
                <optgroup label="Select Category">
                  <option value=""> All Categories </option>
                  @foreach ($categories as $cat)
                      <option value="{{ $cat->id }}" @if ($categoryFilter == $cat->id)
                          selected
                      @endif> <i class="fa {{ $cat->icon }}"></i> {{ $cat->name }} </option>
                  @endforeach
                </optgroup>
              </select>
                <span class="input-group-btn">
                  <button type="submit" class="btn btn-default"> <i class="fa fa-list"></i> </button>
                </span>
            </div>
          </form>
        </div>

        <div class="col-md-6">
          <form class="" action="{{ route('ads.index') }}" method="get">
            <div class="input-group">
              <input type="text" class="form-control" name="search" placeholder="What are you looking for?">
              <span class="input-group-btn">
                <button type="submit" class="btn btn-default"> <i class="fa fa-search"></i> Search </button>
              </span>
            </div>
          </form>
        </div>


      </div>
    </div>

    <div class="content-bg-color">
      <div class="row">
        <!-- Left navbar start -->
        <div class="col-md-3">
          <!-- Panel and list group style start for left navbar -->
          <div class="panel-group list-group" id="accordion">
            <!-- first list item and panel start -->
            <div class="panel panel-success">
              <div class="panel-heading">
                <h1 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" class="list-group-item text-center"> Sort Result By </a>
                </h1>
              </div>
              <div id="collapse1" class="panel-collapse collapse in">
                <form class="" action="{{ route('ads.index') }}" method="get">
                  <div class="panel-body">
                    <div class="input-group">
                      <span class="input-group-addon"> <i class="fa fa-sort"></i> </span>
                      <select class="form-control" name="sort" onchange="this.form.submit()">
                        <option value="latest" {{ ($sortFilter=='latest')?'selected':'' }}> Date: Newest on Top </option>
                        <option value="oldest" {{ ($sortFilter=='oldest')?'selected':'' }}> Date: Oldest on Top </option>
                        <option value="high" {{ ($sortFilter=='high')?'selected':'' }}> Price: High to Low </option>
                        <option value="low" {{ ($sortFilter=='low')?'selected':'' }}> Price: Low to High  </option>
                      </select>
                    </div>
                  </form>
                  </div>
              </div>
            </div> <!-- first list item and panel start -->

            <!-- second list item and panel start -->
            <div class="panel panel-success">
              <div class="panel-heading">
                <h1 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" class="list-group-item text-center"> Type of Poster </a>
                </h1>
              </div>
              <div id="collapse2" class="panel-collapse collapse in">
                <div class="panel-body">
                  <form class="" action="{{ route('ads.index') }}" method="get">
                    <div class="input-group">
                      <span class="input-group-addon"> <i class="fa fa-user"></i> </span>
                      <select class="form-control" name="type" onchange="this.form.submit()">
                        <option value="all"> All Posters </option>
                        <option value="member" @if ($typeFilter == "member")
                            selected
                        @endif> Only Members </option>
                      </select>
                    </div>
                  </form>
                </div>
              </div>
            </div> <!-- second list item and panel start -->

            <!-- Third list item and panel start -->
            <div class="panel panel-success">
              <div class="panel-heading">
                <h1 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" class="list-group-item text-center"> All Categories </a> </h1>
              </div>
              <div id="collapse3" class="panel-collapse collapse">
                <div class="list-group">
                    @foreach ($categories as $cat)
                        <a href="{{ route('ads.index') }}?category={{ $cat->id }}" class="list-group-item" style="height:auto;"> <i class="fa {{ $cat->icon }}"> </i> {{ $cat->name }}  <span class="badge"> {{ $cat->total_post }} </span> </a>
                    @endforeach
                </div>
              </div>
            </div> <!-- Third list item and panel start -->

            <!-- Fourth list item and panel start -->
            <div class="panel panel-success">
              <div class="panel-heading">
                <h1 class="panel-title">
                  <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="list-group-item text-center"> All Divisions </a>
                </h1>
              </div>
              <div id="collapse4" class="panel-collapse collapse">
                <div class="list-group">
                    @foreach ($divitions as $div)
                        <a href="{{ route('ads.index') }}?divition={{ $div->id }}" class="list-group-item"> {{ $div->name }} <span class="badge"> {{ $div->total_post }} </span> </a>
                    @endforeach
                </div>
              </div>
            </div> <!-- Fourth list item and panel start -->
          </div> <!-- Panel and list group style start for left navbar -->
        </div> <!-- Left navbar end -->

        <div class="col-md-7 col-sm-12 col-xs-12">
          <p> Home <span class="fa fa-long-arrow-right"></span> @if ($divitionFilter)

          @elseif ($categoryFilter)

          @else
                All ads in Bangladesh
          @endif</p>
          @forelse ($posts as $post)
              <a href="{{ route('post.show', $post->id) }}">
                <div class="panel panel-default item-sty">
                  <div class="panel-body">
                    <div class="row media">
                      <div class="col-md-3 col-sm-4">
                        <div class="media-left">
                          <img class="img-responsive" src="{{ Voyager::image($post->photo1) }}" alt="{{ $post->title }}">
                        </div>
                      </div>
                      <div class="col-md-7 col-sm-8">
                        <div class="media-body">
                          <p class="media-heading"> {{ $post->title }} </p>
                          <p class="text-muted"> <b class="label label-default"> {{ ($post->user->role->name =='member')? $post->user->role->name: $post->user->name }} </b> &nbsp; <wbr> {{ $post->created_at->diffForHumans() }}, <wbr> {{ $post->place->name }},<wbr> {{ $post->sub_category->name }} </p>
                          <p> <b> Tk {{ $post->price }} </b> </p>
                        </div>
                      </div>
                      <div class="col-md-2">
                        <div class="media-right">
                          {{-- <p class="label label-success"> <i class="fa fa-shield"></i> TOP PAID </p> --}}
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </a>
          @empty
              <h2 class="text-center w3-margin">No Ad found!</h2>
          @endforelse

          <div>
              {{ $posts->links() }}
          </div>

        </div>
      </div>
    </div>
  </div>
@endsection
