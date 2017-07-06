<?php

use Illuminate\Database\Seeder;

class LanguagesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('languages')->insert([
            'language' => 'English'
        ]);
        
        DB::table('languages')->insert([
            'language' => 'Afrikaans'
        ]);
        DB::table('languages')->insert([
            'language' => 'French'
        ]);
        DB::table('languages')->insert([
            'language' => 'Zulu'
        ]);
        DB::table('languages')->insert([
            'language' => 'Sotho'
        ]);
        DB::table('languages')->insert([
            'language' => 'Venda'
        ]);
        
        DB::table('languages')->insert([
            'language' => 'Portugues'
        ]);
    }
}
