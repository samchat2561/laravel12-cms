<div class="max-w-screen-xl mx-auto mt-2 bg-white shadow-2xl rounded-lg">
    <!-- Blog Posts Grid -->
    <section class="mx-auto p-2 sm:p-5 md:p-3 mb-15 relative shadow-2xl rounded-2xl font-[sarabun]">
        <div class="grid grid-cols-1 sm:grid-cols-12 gap-2 shadow rounded">
            <div class="sm:col-span-6 lg:col-span-9 p-2 shadow-2xl rounded">
                <h2 class="text-xl font-semibold text-amber-900 mb-8">{{ $sectionTitle }}</h2>
                {{-- <h2 class="text-xl font-semibold text-amber-900 mb-8">โพสล่าสุด (Latest Posts)</h2> --}}
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2">
                    <!-- Blog Post 1 -->
                    @foreach ($posts as $post)
                        <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition">
                            <div class="bg-gray-50">
                                <img src="https://readymadeui.com/Imagination.webp" alt="Blog Post 1"
                                    class="w-full h-48 cursor-pointer object-cover object-top" />
                            </div>
                            <div class="p-6">
                                <div class="flex items-center space-x-2 text-sm text-gray-600 mb-3">
                                    @foreach ($post->categories as $category)
                                        <span class="bg-green-100 text-green-600 px-3 py-1 rounded-full">
                                            <a href="{{ route('category.show', $category) }}">{{ $category->name }}</a>
                                        </span>
                                    @endforeach
                                    <span>{{ $post->published_at->format('d-m-Y') }}</span>
                                </div>
                                <h3 class="text-base font-semibold text-slate-900">
                                    <a href="{{ route('post.show', $post) }}">{{ $post->title }}</a>
                                </h3>
                                <hr class="my-4 border-slate-300" />
                                <p class="text-slate-600 text-[15px] mb-4 leading-relaxed">
                                    {{ $post->exercpt }}</p>
                                <a href="{{ route('post.show', $post) }}"
                                    class="text-blue-600 font-semibold hover:text-blue-700">Read More →</a>
                            </div>
                        </div>
                    @endforeach
                </div>

                {{-- pagination --}}
                @if ($showPaginationLink ?? true)
                    <div class="mt-6">
                        {{ $posts->links() }}
                    </div>
                @endif
                
            </div>

            {{-- Category page --}}
            <div class="sm:col-span-6 lg:col-span-3 p-2 shadow-2xl rounded">
                <h2 class="text-base font-semibold text-amber-900 mb-8">บทความในบล็อก (Blog Post)</h2>
                <div class="flex items-start mb-2 pb-2">
                    <a href="#" class="inline-block mr-3">
                        <img class="w-40 h-auto object-cover font-medium bg-cover bg-center rounded shadow hover:scale-[1.03] transition-all"
                            src="https://readymadeui.com/team-1.webp" alt="Blog Post 1" />
                    </a>
                    <div class="text-sm">
                        <a href="#" class="text-gray-900 font-medium hover:text-indigo-600 leading-none">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui, suscipit.
                        </a>
                        <p class="text-gray-600 text-xs">2025-09-15 15:30</p>
                    </div>
                </div>

                <div class="flex items-start mb-2 pb-2">
                    <a href="#" class="inline-block mr-3">
                        <img class="w-40 h-auto object-cover font-medium bg-cover bg-center rounded shadow hover:scale-[1.03] transition-all"
                            src="https://readymadeui.com/team-2.webp" alt="Blog Post 1" />
                    </a>
                    <div class="text-sm">
                        <a href="#" class="text-gray-900 font-medium hover:text-indigo-600 leading-none">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui, suscipit.
                        </a>
                        <p class="text-gray-600 text-xs">2025-09-15 15:30</p>
                    </div>
                </div>

                <div class="flex items-start mb-2 pb-2">
                    <a href="#" class="inline-block mr-3">
                        <img class="w-40 h-auto object-cover font-medium bg-cover bg-center rounded shadow hover:scale-[1.03] transition-all"
                            src="https://readymadeui.com/team-3.webp" alt="Blog Post 1" />
                    </a>
                    <div class="text-sm">
                        <a href="#" class="text-gray-900 font-medium hover:text-indigo-600 leading-none">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui, suscipit.
                        </a>
                        <p class="text-gray-600 text-xs">2025-09-15 15:30</p>
                    </div>
                </div>

                <div class="flex items-start mb-2 pb-2">
                    <a href="#" class="inline-block mr-3">
                        <img class="w-40 h-auto object-cover font-medium bg-cover bg-center rounded shadow hover:scale-[1.03] transition-all"
                            src="https://readymadeui.com/team-4.webp" alt="Blog Post 1" />
                    </a>
                    <div class="text-sm">
                        <a href="#" class="text-gray-900 font-medium hover:text-indigo-600 leading-none">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui, suscipit.
                        </a>
                        <p class="text-gray-600 text-xs">2025-09-15 15:30</p>
                    </div>
                </div>

                <div class="flex items-start mb-2 pb-2">
                    <a href="#" class="inline-block mr-3">
                        <img class="w-40 h-auto object-cover font-medium bg-cover bg-center rounded shadow hover:scale-[1.03] transition-all"
                            src="https://readymadeui.com/team-5.webp" alt="Blog Post 1" />
                    </a>
                    <div class="text-sm">
                        <a href="#" class="text-gray-900 font-medium hover:text-indigo-600 leading-none">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Qui, suscipit.
                        </a>
                        <p class="text-gray-600 text-xs">2025-09-15 15:30</p>
                    </div>
                </div>

            </div>
        </div>
    </section>
</div>
