<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBillingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('billings', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('Cycle_MonthCount');
            $table->string('Bills_Customer_Name');
            $table->string('Bills_Address');
            $table->integer('Bills_AccountNum');
            $table->string('CycleMonth');
            $table->integer('CycleYear');
            $table->string('Bills_AccountType_Name');
            $table->string('Bills_MeterStatus_Name');
            $table->string('Bills_Activity_Name');
            $table->string('Bills_Region_Name');
            $table->integer('Bills_CurrentReading');
            $table->integer('Bills_PreviousReading');
            $table->integer('Bills_WaterAmount');
            $table->decimal('Bills_WaterValue');
            $table->decimal('Bills_SanitationValue');
            $table->decimal('Bills_Sustainability');
            $table->decimal('Bills_SalesTaxValue');
            $table->decimal('Bills_Organizational');
            $table->decimal('Bills_ContractPremiumValue');
            $table->decimal('Bills_NetValue');
            $table->string('Bills_WaterValueText');
     
            /*
            $table->text('answer')->nullable();
            $table->integer('seq')->default("");
            $table->timestamps();
            */
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('billings');
    }
}
