<?php
use app\Impressum;
namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class ImpressumsController extends Controller
{
    public function index()
    {
  	$impressums = \App\Impressum::all();
    return view('impressum.index', compact('impressums'));
    }
}
