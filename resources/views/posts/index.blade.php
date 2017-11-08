@extends('layouts.app')

@section('content')
  <div class="container">
    <div class="content-bg-color">
      <h3 class="text-center"> Welcome {{ Auth::user()->name }}, Let's post an ad. Choose any option below:</h3> <hr>
      <div class="row">
        <div class="col-md-10 col-md-offset-1">
          <div class="row">
            <div class="col-md-6">
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h1 class="panel-title"> <i class="fa fa-money fa-fw"></i> Sell something </h1>
                </div>
                <div class="panel-body">
                  <div class="list-group">
                    <a href="{{ route('post.create') }}" class="list-group-item"> Sell an item or service </a>
                    <a href="{{ route('post.create') }}" class="list-group-item"> Offer a property for rent </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="panel panel-success">
                <div class="panel-heading">
                  <h1 class="panel-title"> <i class="fa fa-search-plus fa-fw"></i> Look for something </h1>
                </div>
                <div class="panel-body">
                  <div class="list-group">
                    <a href="{{ route('post.create') }}" class="list-group-item"> Sell an item or service </a>
                    <a href="{{ route('post.create') }}" class="list-group-item"> Offer a property for rent </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div> <hr>
      <div class="row">
        <div class="col-md-6 col-md-offset-4">
          <div class="media">
            <div class="media-left">
              <i class="fa fa-calendar-plus-o fa-4x"></i>
            </div>
            <div class="media-body">
              <h3 class="media-heading"> Your free posting allowance </h3>
              <a href="#"> Learn about posting ads for free on Koridbiki </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="content-bg-color">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h1 class="panel-title"> Quick Rules </h1>
        </div>
        <div class="panel-body">
          <h4 class="text-center text-primary"> All ads posted on Koridbiki.com must follow our rules: </h4> <hr>
          <ol>
            <li> Make sure you post in the correct category. </li>
            <li> Do not post the same ad more than once or repost an ad within 48 hours. </li>
            <li> Do not upload pictures with watermarks. </li>
            <li> Do not post ads containing multiple items unless it's a package deal. </li>
            <li> Do not put your email or phone numbers in the title or description. </li>
          </ol>
          <p class="text-right">
            <a href="#"> Click here to see all of our posting rules <i class="fa fa-long-arrow-right"></i> </a>
          </p>
        </div>
      </div>
    </div>
  </div>
@endsection
