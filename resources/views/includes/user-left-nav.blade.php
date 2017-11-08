<!-- Third list item and panel start -->
<div class="panel panel-success">
  <div class="panel-body">
    <div class="list-group">
      <a href="{{ route('dashboard') }}" class="list-group-item @if(Request::is('user/dashboard*')) active @endif">
         <i class="fa fa-dashboard fa-fw"> </i> My Account <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('membership') }}" class="list-group-item @if(Request::is('user/membership*')) active @endif">
         <i class="fa fa-id-badge fa-fw"> </i> My Membership <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('favorite-ads') }}" class="list-group-item @if(Request::is('user/favorite-ads*')) active @endif">
         <i class="fa fa-star-o fa-fw"> </i> Fevorites <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
      <a href="{{ route('settings') }}" class="list-group-item @if(Request::is('user/settings*')) active @endif">
         <i class="fa fa-gears fa-fw"> </i> Settings <span class="badge"> <i class="fa fa-arrow-right fa-fw"> </i> </span>
      </a>
    </div>
  </div>
</div> <!-- Third list item and panel start -->
