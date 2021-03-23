<?php

namespace App\Http\Controllers;

use File;
use Image;

use App\Company;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

use App\Http\Services\CompanyService;


class CompanyController extends Controller
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

    public function addCompany(Request $request, CompanyService $CompanyService)
    {

        $validatedData = request()->validate([
            'name' => ['required', 'string', 'min:3', 'max:100'],
            'email' => ['required', 'string', 'email'],
            'website' => ['required', 'string', 'url'],
        ]);

        $this->validate($request, [
            'logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4096|dimensions:min_width=100,min_height=100',
        ]);

        $logo = $CompanyService->createAlias(request('name')).'-'.Str::random(15);

        $company = new Company;
        $company->name = request('name');
        $company->email = request('email');
        $company->website = request('website');
        $company->logo = $logo;
        $company->save();
  
        $image = $request->file('logo');
        $filename = $logo.'.png';

        $destinationPath = 'images/companies';

        $img = Image::make($image->path())->encode('png', 80)->save($destinationPath.'/'.$filename);

        $img = Image::make('images/companies/'.$logo.'.png')->resize(256, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($destinationPath.'/'.$filename);

        $img->stream();

        Storage::disk('local')->put('public/images/companies/'.$logo.'.png', $img, 'public');
   
        return back()
            ->with('success','A new company has been successfully added.');
    }

    public function removeCompany(Request $request)
    {
        $validatedData = request()->validate([
            'id' => ['required', 'integer', 'min:0'],
        ]);

        $company = Company::findOrFail(request('id'));

        Storage::disk('local')->delete('public/images/companies/'.$company->logo.'.png');

        $company->employees()->delete();

        Company::destroy($company->id);
   
        return redirect()->back()
            ->with('listSuccess','A company has been successfully removed.');
    }

    public function updateCompany(Request $request)
    {
        $validatedData = request()->validate([
            'id' => ['required', 'integer', 'min:0'],
            'name' => ['required', 'string', 'min:3', 'max:100'],
            'email' => ['required', 'string', 'email'],
            'website' => ['required', 'string', 'url'],
        ]);
        
        $company = Company::findOrFail(request('id'));
        $company->name = request('name');
        $company->email = request('email');
        $company->website = request('website');
        $company->save();
        
        if ($request->hasFile('logo')) {
            $this->validate($request, [
                'logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4096|dimensions:min_width=100,min_height=100',
            ]);

            $image = $request->file('logo');
            $logo = $company->logo;
            $filename = $logo.'.png';
            $destinationPath = 'images/companies';

            Storage::disk('local')->delete('public/images/companies/'.$company->logo.'.png');

            $img = Image::make($image->path())->encode('png', 80)->save($destinationPath.'/'.$filename);

            $img = Image::make('images/companies/'.$logo.'.png')->resize(256, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath.'/'.$filename);

            $img->stream();

            Storage::disk('local')->put('public/images/companies/'.$logo.'.png', $img, 'public');
        }
   
        return redirect()->back()
            ->with('listSuccess','A company has been successfully updated.');
    }

}