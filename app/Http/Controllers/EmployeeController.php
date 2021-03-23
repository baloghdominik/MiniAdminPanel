<?php

namespace App\Http\Controllers;

use App\Employee;
use App\Company;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class EmployeeController extends Controller
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

    public function addEmployee(Request $request)
    {

        $validatedData = request()->validate([
            'firstname' => ['required', 'string', 'min:3', 'max:100'],
            'lastname' => ['required', 'string', 'min:3', 'max:100'],
            'email' => ['required', 'string', 'email'],
            'phone' => ['required', 'string', 'min:11', 'max:13'],
            'company' => ['required', 'integer', 'min:0'],
        ]);

        $company = Company::findOrFail(request('company'));

        $employee = new Employee;
        $employee->firstname = request('firstname');
        $employee->lastname = request('lastname');
        $employee->email = request('email');
        $employee->phone = request('phone');
        $employee->company = $company->id;
        $employee->save();
   
        return back()
            ->with('listSuccess','A new employee has been successfully added to a company.');
    }

    public function removeEmployee(Request $request)
    {
        $validatedData = request()->validate([
            'id' => ['required', 'integer', 'min:0'],
        ]);

        $employee = Employee::findOrFail(request('id'));

        Employee::destroy($employee->id);
   
        return redirect()->back()
            ->with('listSuccess','An Employee has been successfully removed.');
    }

    public function updateEmployee(Request $request)
    {
        $validatedData = request()->validate([
            'id' => ['required', 'integer', 'min:0'],
            'firstname' => ['required', 'string', 'min:3', 'max:100'],
            'lastname' => ['required', 'string', 'min:3', 'max:100'],
            'email' => ['required', 'string', 'email'],
            'phone' => ['required', 'string', 'min:11', 'max:13'],
        ]);
        
        $employee = Employee::findOrFail(request('id'));
        $employee->firstname = request('firstname');
        $employee->lastname = request('lastname');
        $employee->email = request('email');
        $employee->phone = request('phone');
        $employee->save();
        
   
        return redirect()->back()
            ->with('listSuccess','An Employee has been successfully updated.');
    }

}