<?php

use App\Company;
use App\Employee;
use Faker\Generator as Faker;

$factory->define(Company::class, function (Faker $faker) {
    return [
        'name' => 'Company',
        'email' => 'info@company.com',
        'website' => 'https://company.com',
        'logo' => 'companylogo',
    ];
});

$factory->define(Employee::class, function (Faker $faker) {
    return [
        'firstname' => 'Dominik',
        'lastname' => 'Balogh',
        'email' => 'balogh0dominik@gmail.com',
        'phone' => '+36303909135',
    ];
});