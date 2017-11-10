@extends('layouts.app')

@section('content')
  <div class="container">
    <div class="content-bg-color">
      <h3 class="text-center"> Welcome {{ Auth::user()->name }}, Let's post an ad. Choose any option below:</h3>
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form class="" action="{{ route('post.store') }}" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="form-group col-md-6 col-sm-12">
                    <label for="category_id">Category</label>
                    <select class="form-control" name="category_id" id="category_id">
                        @foreach ($category as $cat)
                            <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="form-group col-md-6 col-sm-12">
                    <label for="sub_category_id">Sub Category</label>
                    <select class="form-control" name="sub_category_id" id="sub_category_id">
                        @foreach ($subcat as $sub)
                            <option value="{{ $sub->id }}">{{ $sub->name }}</option>
                        @endforeach
                    </select>
                </div>

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

                <div class="form-group col-md-12 col-sm-12">
                    <label for="title">Title</label>
                    <input type="text" name="title" placeholder="title" class="form-control">
                </div>
                <div class="form-group col-md-12 col-sm-12">
                    <label for="description">Description</label>
                    <textarea name="description" class="form-control" placeholder="Description" rows="4" cols="80"></textarea>
                </div>

                <div class="form-group col-md-6 col-sm-12">
                    <label for="photo1">Photo 1</label>
                    <input type="file" name="photo1">
                </div>
                <div class="form-group col-md-6 col-sm-12">
                    <label for="photo2">Photo 2</label>
                    <input type="file" name="photo2" >
                </div>
                <div class="form-group col-md-6 col-sm-12 hidden-xs" id="photo3">
                    <label for="photo3">Photo 3</label>
                    <input type="file" name="photo3">
                </div>
                <div class="form-group col-md-6 col-sm-12 hidden-xs" id="photo4">
                    <label for="photo4">Photo 4</label>
                    <input type="file" name="photo4">
                </div>

                <div class="visible-xs w3-margin-left">
                    <button type="button" name="button" class="btn btn-warning btn-xs">Add More</button>
                </div>

                <div class="col-md-12 col-sm-12">
                    <div class="form-group">
                        <label for="price">Price</label>
                        <div class="input-group">
                          <input type="text" name="price" class="form-control" placeholder="Price">
                          <label class="input-group-addon">
                            <input type="checkbox" name="negatiable" value="1"> Negatiable
                          </label>
                        </div>
                    </div>
                </div>

                {{-- <div class="form-group col-md-12 col-sm-12" id="loading" hidden="hidden">
                    <h1 class="text-center"><i class="fa fa-spinner fa-spin fa-4x"></i></h1>
                </div> --}}

                <div class="col-md-12 col-sm-12" id="extra_fields" style="">

                </div>

                <div class="form-group col-md-12 col-sm-12">
                  <label for="contact">Contact No</label>
                  <input type="text" class="form-control" name="contact" id="contact" placeholder="01722635...">
                </div>
                <div class="col-md-10 col-sm-12">
                    <button type="submit" name="button" class="btn btn-primary w3-magrin-left">Post</button>
                </div>
            </form>
        </div>

      </div>
    </div>
  </div>
@endsection

@push('scripts')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script src="http://formbuilder.online/assets/js/form-builder.min.js"></script>
    <script src="{{ asset('js/form-render.min.js') }}" charset="utf-8"></script>

    <script type="text/javascript">
        var cats = {
            @foreach ($category as $cat)
                @if (count($cat->sub_categories)>0)
                    "{{ $cat->id }}":[
                            @foreach ($cat->sub_categories as $sub)
                                { "name":"{!! $sub->name !!}","id":"{{ $sub->id }}" },
                            @endforeach
                    ],
                @else
                    "{{ $cat->id }}":[],
                @endif

            @endforeach

        };

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
            $( document ).ready(function() {
              $("#sub_category_id").change();
            });

            // $('#loading').bind('ajaxStart', function(){
            //     $(this).show();
            // }).bind('ajaxStop', function(){
            //     $(this).hide();
            // });

            $(document).on('change','#category_id',function(){
                var subcats = cats[this.value];
                var subcatsOpt = $.map(subcats, function ( item, i) {
                    return $('<option>', { text: item.name, value: item.id });
                });
                $("#sub_category_id").empty().append(subcatsOpt);

                $("#sub_category_id").change();
            });

            $(document).on('change','#divition_id',function(){
                var subplaces = places[this.value];
                var subplacesOpt = $.map(subplaces, function ( item, i) {
                    return $('<option>', { text: item.name, value: item.id });
                });
                $("#place_id").empty().append(subplacesOpt);
            });

            $(document).on('change','#sub_category_id',function(){
                $("#extra_fields").empty();
                var id = (this.value) ? this.value : "-1";
                $.ajax({
                      url: '/extra_fields/' + id,
                      success: function(html){
                          // console.log(html);
                          var data = JSON.parse(html);
                          
                          var fbRender = document.getElementById('extra_fields');

                          var formRenderOpts = {
                              formData: data
                          };

                          $(fbRender).formRender(formRenderOpts);
                      }
                });
            });
        });
    </script>
@endpush
