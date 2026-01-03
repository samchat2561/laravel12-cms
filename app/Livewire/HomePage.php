<?php

namespace App\Livewire;

use App\Models\Post;
use Livewire\Attributes\Title;
use Livewire\Component;

class HomePage extends Component
{
    #[Title('วิทยาลัยเทคนิคตราด')]

    public function render()
    {
        $posts = Post::with('categories')->post()->published()->paginate(3);
        return view('livewire.home-page', ['posts' => $posts]);
    }
}
