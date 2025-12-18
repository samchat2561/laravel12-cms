<?php

use App\Livewire\HomePage;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', HomePage::class)->name('home.index');

Route::get('/category/{category:slug}', function (Request $request, Category $category) {
    dd($category);
});

Route::get('/{post:slug}', function (Request $request, Post $post) {
    dd($post);
});
