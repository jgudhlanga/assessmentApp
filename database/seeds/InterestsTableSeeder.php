<?php

use Illuminate\Database\Seeder;

class InterestsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('interests')->insert([
            'title' => 'Reading'
        ]);
        DB::table('interests')->insert([
            'title' => 'Cooking'
        ]);
         DB::table('interests')->insert([
            'title' => 'Programming'
        ]);
        DB::table('interests')->insert([
            'title' => 'Designing'
        ]);
         DB::table('interests')->insert([
            'title' => 'Shopping'
        ]);
          DB::table('interests')->insert([
            'title' => 'Teaching'
        ]);
    }
}
