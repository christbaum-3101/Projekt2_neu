<?php

use Illuminate\Database\Seeder;

class ImpressumSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     
        DB::table('impressum')->insert([
            'title' => 'Profi-Profi:',
            'text' => 'mt141055 Magdalena Marchsteiner']);
     
        DB::table('impressum')->insert([
            'title' => 'CSS-Profi:',
            'text' => 'mt141092 Marlene Strasser']);
     
        DB::table('impressum')->insert([
            'title' => 'Laravel-Profi:',
            'text' => 'mt142003 Martina Strohmayer']);
 
        DB::table('impressum')->insert([
            'title' => 'Auftraggeber:',
            'text' => '/fh/// St. Pölten, Abteilung Medientechnik']);
 
   		DB::table('impressum')->insert([
            'title' => 'Semester:',
            'text' => '4. Semester, SS2016']);
            
   		DB::table('impressum')->insert([
            'title' => 'Datum:',
            'text' => 'Juni 2016']);
            
 
 
    }
}
