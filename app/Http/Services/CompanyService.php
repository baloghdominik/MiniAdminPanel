<?php

namespace App\Http\Services;

use App\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CompanyService
{
    public function listCompanies($page)
    {
        if (!is_numeric($page)){
            $page = 1;
        }

        $page = $page * 10 - 10;

        $companies = Company::skip($page)->take(10)->with('employees')->get();
    
        return $companies;
    }

    public function countCompaniesPages()
    {
        $pages = Company::count();

        $pages = ceil($pages / 10);
    
        return $pages;
    }
    
    public function createAlias($name)
    {
        $return = NULL;
        if($name)
        {
            $return = preg_replace("/\W/", " ", $name);
            $return = preg_replace("/ +/", "-", trim($return));
        }
        
        return $return;
    }

}