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
            <h1 class="panel-title"> Settings </h1>
          </div>
          <div class="panel-body">
            <h3> Change details </h3> <hr>
            <p> <span> <i class="fa fa-envelope-o fa-fw"></i> Email: </span>  <b> {{ Auth::user()->email }}</b> </p>
            <form class="" action="index.html" method="post">
                {{ csrf_field() }}
              <div class="row">
                <div class="col-md-6 col-md-offset-right-6">
                  <div class="form-group">
                    <label for="name"> Name </label>
                    <div class="input-group">
                      <span class="input-group-addon"> <i class="fa fa-user-o"></i></span>
                      <input class="form-control" type="text" name="name" value="{{ Auth::user()->name }}">
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">

                <div class="form-group col-md-6 col-sm-12">
                    <label for="divition">Divition</label>
                    <select class="form-control" name="divition_id" id="divition_id">
                        @foreach ($divitions as $divition)
                            <option value="{{ $divition->id }}">{{ $divition->name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group col-md-6 col-sm-12">
                    <label for="place_id">Palce</label>
                    <select class="form-control" name="place_id" id="place_id">
                        @foreach ($places as $place)
                            <option value="{{ $place->id }}">{{ $place->name }}</option>
                        @endforeach
                    </select>
                </div>

              </div>
              <div class="text-right">
                <button type="submit" class="btn btn-default"> <i class="fa fa-pencil-square-o fa-fw"></i> Update Now </button>
              </div>
            </form>
            <!-- Second form for change password -->
            <h3> Change Password </h3> <hr>
            <form class="" action="index.html" method="post">
                {{ csrf_field() }}
              <div class="row">
                <div class="col-md-6 col-md-offset-3">
                  <div class="form-group">
                    <label for="name"> Current Password </label>
                    <div class="input-group">
                      <span class="input-group-addon"> <i class="fa fa-lock"></i></span>
                      <input class="form-control" type="password" name="password">
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 col-md-offset-3">
                  <div class="form-group">
                    <label for="name"> New Password </label>
                    <div class="input-group">
                      <span class="input-group-addon"> <i class="fa fa-plus"></i></span>
                      <input class="form-control" type="password" name="new_password">
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-6 col-md-offset-3">
                  <div class="form-group">
                    <label for="name"> Confirm Password </label>
                    <div class="input-group">
                      <span class="input-group-addon"> <i class="fa fa-check-square-o"></i></span>
                      <input class="form-control" type="password">
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 col-md-offset-3 text-right">
                  <button type="submit" class="btn btn-default"> <i class="fa fa-paper-plane fa-fw"></i> Change Password </button>
                </div>
              </div>
            </form>
            {{-- <!-- buy safety code number section start-->
            <h3> Buy Safety Code </h3> <hr>
            <div class="text-center">
              <h4> Your Buy Now safety code is: <b> 1254 </b> </h4>
              <h4> To get safety code, please contact with us  </h4>
              <h4> <i class="fa fa-mobile"></i> +00801746258947 </h4>
            </div> <!-- buy safety code number section start--> --}}

          </div>
        </div>
      </div>
    </div>
</div>
@endsection

@push('scripts')
    <script type="text/javascript">

        var places = {
            @foreach ($divitions as $divition)
                @if (count($divition->places)>0)
                    "{{ $divition->id }}":[
                            @foreach ($divition->places as $place)
                                { "name":"{!! $place->name !!}","id":"{{ $place->id }}" },
                            @endforeach
                    ],
                @else
                    "{{ $divition->id }}":[],
                @endif

            @endforeach

        };


        $(function() {

            $(document).on('change','#divition_id',function(){
                var subplaces = places[this.value];
                var subplacesOpt = $.map(subplaces, function ( item, i) {
                    return $('<option>', { text: item.name, value: item.id });
                });
                $("#place_id").empty().append(subplacesOpt);
            });
        });
    </script>
@endpush
