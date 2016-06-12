@extends('app')

@section('title')
Impressum
@endsection
@section('content')
@if ( !$impressums->count() )
Es gibt noch keine Impressum Einträge. 
@else
<div class="">

@section('content')

   @foreach ($impressums as $impressum)
 
   <impressum>
 	<h2>{{$impressum->title}}</h2>
 	<h3>{{$impressum->text}}</h3>
   </impressum>
  @endforeach
  @stop
@endif 
@endsection


