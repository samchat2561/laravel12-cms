<div>
    @section('content')
        @include('livewire.bloglist-page', ['sectionTitle' => $category->name, 'posts' => $posts])
    @endsection
</div>
