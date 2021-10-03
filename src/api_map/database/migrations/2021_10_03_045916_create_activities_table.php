<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

/**
 * Class CreateActivitiesTable.
 */
class CreateActivitiesTable extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('activities', function(Blueprint $table) {
            $table->increments('id');
            $table->string('description', 255)->nullable();
            $table->string('category', 500)->nullable(); //Should be a foreign key
            $table->timestamp('event_time')->nullable();
            $table->string('organisers', 500)->nullable(); //Should be a list foreign keys
            $table->string('participants', 500)->nullable(); //Should be a list foreign keys (or a json field)
            $table->string('location', 155)->nullable();
            $table->decimal('distance', 11, 8)->nullable(); // mysql support Point POINT(40.71727401 -74.00898606)
            $table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('activities');
	}
}
