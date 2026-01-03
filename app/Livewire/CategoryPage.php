<?php

namespace App\Livewire;

use App\Models\Category;
use Livewire\Component;
use Livewire\WithPagination;

class CategoryPage extends Component
{
    use WithPagination;

    public Category $category;

    public function mount(Category $category)
    {
        // Category is automatically injected via the URL slug
        $this->category = $category;
    }

    public function render()
    {
        $posts = $this->category->posts()->with('categories')->published()->paginate(3);

        return view('livewire.category-page', [
            'category' => $this->category,
            'posts' => $posts
        ]);
    }
}
