@extends('layouts.app')

@section('content')

@if (!is_numeric($pages) || !is_numeric($currentPage))
    {{ Redirect::to('/1') }}
@endif
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Companies</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if ($message = Session::get('listSuccess'))
                    <div class="alert alert-success alert-block">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>{{ $message }}</strong>
                    </div>
                    @endif

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>We found some problems!</strong>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Logo</th>
                                    <th scope="col">Company</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Website</th>
                                    <th scope="col">Delete</th>
                                </tr>
                            </thead>
                            <tbody>

                                @foreach($companies as $key => $company)
                                    <tr class="accordion-toggle collapsed" id="accordion{{ $company->id }}" data-toggle="collapse" data-parent="#accordion{{ $company->id }}" href="#collapse{{ $company->id }}">
                                        <td class="btn btn-primary expand-button"></td>
                                        <td class="image-td"><img src="{{ asset('storage/images/companies/'.$company->logo.'.png') }}"></td>
                                        <td>{{ $company->name }}</td>
                                        <td><a href="MAILTO: {{ $company->email }}">{{ $company->email }}</a></td>
                                        <td><a target="_blank" href="{{ $company->website }}">{{ $company->website }}</a></td>
                                        <td class="trash-icon">
                                            <form method="post" action="{{ url('removeCompany') }}">
                                                @csrf
                                                <input name="id" type="hidden" value="{{ $company->id }}" />
                                                <button class="btn btn-danger" type="submit">&#128465;</button>
                                            </form>
                                        </td>
                                    </tr>

                                        <tr class="hide-table-padding">
                                            <td></td>
                                            <td colspan="5">
                                            <div id="collapse{{ $company->id }}" class="collapse in p-3">
                                                <form method="post" action="{{ url('addEmployee') }}">
                                                    @csrf
                                                    <input name="company" type="hidden" value="{{ $company->id }}" />
                                                    <div class="row">
                                                        <div class="col-12" style="margin-top: 20px;">
                                                            <h3 style="text-align: center;">Add new Employee</h3>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="form-group">
                                                                <label for="firstname">Firstname</label>
                                                                <input type="text" class="form-control" id="firstname" name="firstname" value="Dominik" placeholder="Firstname" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="form-group">
                                                                <label for="lastname">Lastname</label>
                                                                <input type="text" class="form-control" id="lastname" name="lastname" value="Balogh" placeholder="Lastname" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="form-group">
                                                                <label for="email">Email</label>
                                                                <input type="email" class="form-control" id="email" name="email" value="balogh0dominik@gmail.com" placeholder="Email" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-6">
                                                            <div class="form-group">
                                                                <label for="phone">Phone</label>
                                                                <input type="text" class="form-control" id="phone" name="phone" value="+36303909135" placeholder="phone" required>
                                                            </div>
                                                        </div>
                                                        <div class="col-12">
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </div>
                                                    </div>
                                                </form>
                                                <div class="row">
                                                    <div class="col-12" style="margin-top: 20px;">
                                                        <h3 style="text-align: center;">List of Employees</h3>
                                                    </div>
                                                </div>
                                                
                                                    @foreach ($company->employees as $employee)
                                                    <div style="padding-right: 15px; padding-left: 15px;">
                                                        <div class="row" style="border-bottom: 1px solid #ccc; padding-top: 5px; padding-bottom: 5px;">
                                                            <div class="col-3" style="font-size: 14px; line-height: 18px; font-weight: 700;">{{ $employee->firstname }} {{ $employee->lastname }}</div>
                                                            <div class="col-4" style="font-size: 13px; line-height: 18px;">{{ $employee->email }}</div>
                                                            <div class="col-3" style="font-size: 13px; line-height: 18px;">{{ $employee->phone }}</div>
                                                            <div class="col-2" style="text-align: right;">
                                                                <a style="font-size: 14px; line-height: 18px; text-decoration: underline;" data-toggle="collapse" href="#employeecollapse{{ $employee->id }}" role="button" aria-expanded="false" aria-controls="employeecollapse{{ $employee->id }}">Edit</a>
                                                            </div>
                                                        </div>
                                                        <div class="collapse" id="employeecollapse{{ $employee->id }}" style="padding-top: 20px; padding-bottom: 20px;">
                                                            <div class="row">
                                                                <div class="col-4">
                                                                    <form method="post" action="{{ url('updateEmployee') }}">
                                                                    @csrf
                                                                    <input name="id" type="hidden" value="{{ $employee->id }}" />
                                                                    <div class="form-group">
                                                                        <label for="firstname">Firstname</label>
                                                                        <input type="text" class="form-control" id="firstname" name="firstname" value="{{ $employee->firstname }}" placeholder="Firstname" required>
                                                                    </div>
                                                                </div>
                                                                <div class="col-4">
                                                                    <div class="form-group">
                                                                        <label for="lastname">Lastname</label>
                                                                        <input type="text" class="form-control" id="lastname" name="lastname" value="{{ $employee->lastname }}" placeholder="Lastname" required>
                                                                    </div>
                                                                </div>
                                                                <div class="col-4">
                                                                    <div class="form-group">
                                                                        <label for="submit">Save</label>
                                                                        <button type="submit" id="submit" class="btn btn-primary btn-block">Save</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-4">
                                                                    <div class="form-group">
                                                                        <label for="email">Email</label>
                                                                        <input type="email" class="form-control" id="email" name="email" value="{{ $employee->email }}" placeholder="Email" required>
                                                                    </div>
                                                                </div>
                                                                <div class="col-4">
                                                                    <div class="form-group">
                                                                        <label for="phone">Phone</label>
                                                                        <input type="text" class="form-control" id="phone" name="phone" value="{{ $employee->phone }}" placeholder="phone" required>
                                                                    </div>
                                                                    </form>
                                                                </div>
                                                                <div class="col-4">
                                                                    <form method="post" action="{{ url('removeEmployee') }}">
                                                                        @csrf
                                                                        <input name="id" type="hidden" value="{{ $employee->id }}" />
                                                                        <div class="form-group">
                                                                            <label for="delete">Delete</label>
                                                                            <button type="submit" id="delete" class="btn btn-danger btn-block">&#128465;</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    @endforeach
                                                
                                                <div class="row">
                                                    <div class="col-12" style="margin-top: 20px;">
                                                        <h3 style="text-align: center;">Edit this Company</h3>
                                                    </div>
                                                    <div class="col-12">
                                                        <form method="post" action="{{ url('updateCompany') }}"  enctype="multipart/form-data">
                                                            @csrf
                                                            <input name="id" type="hidden" value="{{ $company->id }}" />
                                                            <div class="form-group">
                                                                <label for="logo">Company Logo</label>
                                                                <input type="file" class="form-control-file" id="logo" name="logo" aria-describedby="logo">
                                                                <small id="logo" class="form-text text-muted">Minimum resolution: 100x100 pixels.</small>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name">Company Name</label>
                                                                <input type="text" class="form-control" id="name" name="name" value="{{ $company->name }}" placeholder="Company name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email">Company Email</label>
                                                                <input type="email" class="form-control" id="email" name="email" value="{{ $company->email }}" placeholder="companyname@website.com">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="website">Company Website</label>
                                                                <input type="text" class="form-control" id="website" name="website" value="{{ $company->website }}" placeholder="https://www.website.com">
                                                            </div>
                                                            <button type="submit" class="btn btn-primary">Save</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            </td>
                                        </tr>
                                    @endforeach

                            </tbody>
                        </table>
                    </div>

                    <div class="page-selector">
                        <nav aria-label="pagination">
                            <ul class="pagination justify-content-center">
                                @if ($currentPage == 1)
                                    <li class="page-item disabled">
                                        <span class="page-link">Previous</span>
                                    </li>
                                @else
                                    <li class="page-item">
                                        <a class="page-link" href="{{ url('/1') }}">Previous</a>
                                    </li>
                                @endif

                                @for ($i = 1; $i <= $pages; $i++)
                                    @if($currentPage == $i)
                                        <li class="page-item active">
                                            <span class="page-link">
                                                {{ $i }}
                                                <span class="sr-only">(current)</span>
                                            </span>
                                        </li>
                                    @else
                                        <li class="page-item"><a class="page-link" href="{{ url('/'.$i) }}">{{ $i }}</a></li>
                                    @endif
                                @endfor

                                @php
                                    $nextPage = $currentPage +1;
                                @endphp
                                @if ($currentPage == $pages)
                                    <li class="page-item disabled">
                                        <span class="page-link">Next</span>
                                    </li>
                                @else
                                    <li class="page-item">
                                        <a class="page-link" href="{{ url('/'.$nextPage) }}">Next</a>
                                    </li>
                                @endif
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>

            <div class="card">
                <div class="card-header">Add new company</div>

                <div class="card-body">
                    @if ($message = Session::get('success'))
                    <div class="alert alert-success alert-block">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>{{ $message }}</strong>
                    </div>
                    @endif

                    @if ($message = Session::get('fail'))
                    <div class="alert alert-danger alert-block">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>{{ $message }}</strong>
                    </div>
                    @endif

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>We found some problems!</strong>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form method="POST" action="{{ url('addCompany') }}"  enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="logo">Company Logo</label>
                            <input type="file" class="form-control-file" id="logo" name="logo" aria-describedby="logo">
                            <small id="logo" class="form-text text-muted">Minimum resolution: 100x100 pixels.</small>
                        </div>
                        <div class="form-group">
                            <label for="name">Company Name</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Company name" value="Company">
                        </div>
                        <div class="form-group">
                            <label for="email">Company Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="info@domain.com" value="info@company.com">
                        </div>
                        <div class="form-group">
                            <label for="website">Company Website</label>
                            <input type="text" class="form-control" id="website" name="website" placeholder="https://www.website.com" value="https://company.com/">
                        </div>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
