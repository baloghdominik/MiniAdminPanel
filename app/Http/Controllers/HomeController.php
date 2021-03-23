<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
use App\Http\Services\CompanyService;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(CompanyService $CompanyService, $page = 1)
    {
        if (!is_numeric($page)) {
            $page = 1;
        }
        
        $companies = $CompanyService->listCompanies($page);

        $pages = $CompanyService->countCompaniesPages();

        return view('home', ['companies' => $companies, 'pages' => $pages, 'currentPage' => $page]);
    }

    public function changeLocale($locale = 'en')
    {
        if (! in_array($locale, ['en', 'hu'])) {
            $locale = 'en';
        }

        Session::put('locale',$locale);
    
        App::setLocale($locale);

        return redirect()->back();
    }
}
