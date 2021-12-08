<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class mentor
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
        if(auth()->user()->level_id == 2){
          return $next($request);
        }else{
          // abort(403,'Halaman Tidak Tersedia.');
          return redirect('/home');
        }
    }
}
