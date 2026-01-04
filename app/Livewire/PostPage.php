<?php
namespace App\Livewire;

use App\Models\Post;
use Illuminate\Http\Request;
use Livewire\Component;

class PostPage extends Component
{
    public $post = null;

    public function mount(Post $post)
    {
        // Post is automatically injected via the URL slug
        $this->post = $post;
    }

    public function render()
    {
        $tags = $this->post->tags->pluck('name')->toArray();
        // dd($tags);
        $relatedPosts = Post::with('categories')
            ->where('id', '!=', $this->post->id)
            ->withAnyTags($tags)
            ->post()
            ->published()
            ->orderBy('published_at', 'desc')
            ->limit(3)
            ->get();
        return view('livewire.post-page', [
            'post' => $this->post,
            'relatedPosts' => $relatedPosts
        ]);
    }

    public function postByTag(Request $request, $tag)
    {
        $posts = Post::with('categories')
            ->withAnyTags([$tag])
            ->post()
            ->published()
            ->orderBy('published_at', 'desc')
            ->paginate(3);
        return view('livewire.tag-page', ['posts' => $posts, 'tag' => $tag]);
    }
}
