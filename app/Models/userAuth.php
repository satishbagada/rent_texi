<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
class userAuth extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table="user_master";
    protected $fillable = [
        'user_id',
        'user_email',
        'user_name',
        'password',
        'user_status',
        'user_role',
        'user_profile',
        'create_date'
    ];
    protected $primaryKey='user_id';
    public $timestamps=false;

}
