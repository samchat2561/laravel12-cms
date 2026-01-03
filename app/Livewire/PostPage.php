<?php

namespace App\Livewire;

use App\Models\Post;
use Livewire\Component;

class PostPage extends Component
{
    public Post $post;

    public function mount(Post $post)
    {
        // Post is automatically injected via the URL slug
        $this->post = $post;
    }

    public function render()
    {
        return view('livewire.post-page', [
            'post' => $this->post
        ]);
    }
}
