<?php

namespace Database\Seeders;

use App\Company;
use App\Employee;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UserSeeder::class);
        
        // Create 10 records of customers
        factory(Company::class, 25)->create()->each(function ($employees) {
            // Seed the relation with one address
            $employee = factory(Employee::class, 5)->make();
            $employees->employees()->saveMany($employee);
        });
    }
}
