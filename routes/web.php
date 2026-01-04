<?php

use App\Livewire\CategoryPage;
use App\Livewire\HomePage;
use App\Livewire\PostPage;

use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', HomePage::class)->name('home.index');
Route::get('/category/{category:slug}', CategoryPage::class)->name('category.show');
Route::get('/{post:slug}', PostPage::class)->name('post.show');

Route::get('/post/tags/{slug}', [PostPage::class, 'postByTag'])->name('post.bytag');
