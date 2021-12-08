<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // return $next($request);
        if(auth()->user()->level_id == 3){
          return $next($request);
        }else{
          // abort(403,'Halaman Tidak Tersedia.');
          return redirect('/home');
        }
    }
}
