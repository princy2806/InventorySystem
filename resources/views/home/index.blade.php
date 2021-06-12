@extends("layout.adminmaster")

@section("contain")

<style>
.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
 
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
</style>

<center><h1 style="text-decoration:underline">Item Data :-</h1>
<table border="2" class="table table-hover" height="100%" width="100%">
	<tr id="i2">
	
	<th><center>Item Name</center></th>
	<th><center>Current Stock</center></th>
	<th><center>min Stock</center></th>
	
	<th colspan="2"><center>Action</center></th>
	
	</tr>
	@foreach($item->sortByDesc('id') as $it)
	
	<tr>
	<td>{{$it->iname}}</td>
	<td>{{$it->currentstock}}</td>
	<td>
	{{$it->minstock}}
	</td>
	<td>
	<a href="/inwardregister/{{$it->id}}"><button class="btn"><i class="fa fa-plus"></i></button></a> 
	</td>
	<td> 
	<a href="/outwardregister/{{$it->id}}">
	<button class="btn"><i class="fa fa-minus"></i></button></a>

	</td>
	</tr>
	@endforeach
</table></center>
@stop