<?php

use App\Livewire\CategoryPage;
use App\Livewire\HomePage;
use App\Livewire\PostPage;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', HomePage::class)->name('home.index');

// Route::get('/category/{category:slug}', function (Request $request, Category $category) {
//     // dd($category);
//     return $category;
// })->name('category.show');


Route::get('/category/{category:slug}', CategoryPage::class)->name('category.show');
// Route::get('/{post:slug}', function (Request $request, Post $post) {
//     // dd($post);
//     return $post;
// })->name('post.show');

Route::get('/{post:slug}', PostPage::class)->name('post.show');
