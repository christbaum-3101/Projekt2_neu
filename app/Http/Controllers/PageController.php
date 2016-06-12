<?php namespace App\Http\Controllers;

use App\Impressum;
use App\User;
use Redirect;
use App\Http\Controllers\Controller;
use App\Http\Requests\PostFormRequest;

use Illuminate\Http\Request;

// note: use true and false for active posts in postgresql database
// here '0' and '1' are used for active posts because of mysql database

class PageController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function getImpressum()
	{
		//$posts = Posts::where('active','1')->orderBy('created_at','desc')->paginate(5);
		//$title = 'Bisherige Blog-Einträge';
		//return view('home')->withPosts($posts)->withTitle($title);

		return view('impressum');

	}
}
?>
