<!-- Third list item and panel start -->
<div class="panel panel-success">
  <div class="panel-body">
    <div class="list-group">
      <a href="{{ route('admin.dashboard') }}" class="list-group-item @if(Request::is('admin/dashboard*')) active @endif">
         <i class="fa fa-dashboard fa-fw"> </i> Overview <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('categories.index') }}" class="list-group-item @if(Request::is('admin/categories*')) active @endif">
         <i class="fa fa-id-badge fa-fw"> </i> Categories <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('sub-categories.index') }}" class="list-group-item">
         <i class="fa fa-id-card-o fa-fw"> </i> Sub Categories <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('divitions.index') }}" class="list-group-item @if(Request::is('admin/divitions*')) active @endif">
         <i class="fa fa-star-o fa-fw"> </i> Divitions <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('places.index') }}" class="list-group-item @if(Request::is('admin/places*')) active @endif">
         <i class="fa fa-gears fa-fw"> </i> Places <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
    </div>
  </div>
</div> <!-- Third list item and panel start -->
