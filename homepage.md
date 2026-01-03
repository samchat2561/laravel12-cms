<div class="bg-white py-6 px-6 sm:px-12 bg-gradient-to-r from-pink-50 via-pink-50 to-blue-100 font-[sarabun] mb-8">
    <div class="max-w-screen-xl mx-auto p-2 my-2 bg-white shadow-2xl rounded-lg">
        {{-- Slider --}}
        <section class="max-w-screen-xl mx-auto p-2 my-2 bg-white rounded-lg">
            <div x-data="{ activeSlide: 0, slides: 3, timer: null }" x-init="timer = setInterval(() => activeSlide = (activeSlide + 1) % slides, 5000)" class="max-w-8xl mx-auto relative group">
                <div class="text-center text-2xl text-teal-600 my-2">"ข่าวสารประชาสัมพันธ์ <span
                        class="text-amber-600">วิทยาลัยเทคนิคตราด</span>"</div>
                <div class="relative overflow-hidden rounded-lg shadow-xl">
                    <div class="flex transition-transform duration-500 ease-in-out md:h-[500px]"
                        :style="`transform: translateX(-${activeSlide * 100}%)`">
                        <div
                            class="min-w-full bg-blue-500 flex items-center justify-center text-white text-4xl relative">
                            <img src="https://images.unsplash.com/photo-1680725779155-456faadefa26" alt="Random image">
                            <div class="absolute inset-10 flex items-end justify-center">
                                <h2 class="text-white text-base">1.ถวายสัตย์ปฏิญาณเพื่อเป็นข้าราชการที่ดี
                                    และพลังของแผ่นดิน เนื่องในโอกาสพระราชพิธีมหามงคลเฉลิมพระชนมพรรษา ๖ รอบ ๒๘ กรกฎาคม
                                    ๒๕๖๗</h2>
                            </div>
                        </div>

                        <div
                            class="min-w-full bg-green-500 flex items-center justify-center text-white text-4xl relative">
                            <img src="https://images.unsplash.com/photo-1759675795062-a657fcb278b1" alt="">
                            <div class="absolute inset-10 flex items-end justify-center">
                                <h2 class="text-white text-base">2.ถวายสัตย์ปฏิญาณเพื่อเป็นข้าราชการที่ดี
                                    และพลังของแผ่นดิน เนื่องในโอกาสพระราชพิธีมหามงคลเฉลิมพระชนมพรรษา ๖ รอบ ๒๘ กรกฎาคม
                                    ๒๕๖๗</h2>
                            </div>
                        </div>

                        <div
                            class="min-w-full bg-purple-500 flex items-center justify-center text-white text-4xl relative">
                            <img src="https://images.unsplash.com/photo-1760311174612-4cc057f93e2c" alt="">
                            <div class="absolute inset-10 flex items-end justify-center">
                                <h2 class="text-white text-base">3.ถวายสัตย์ปฏิญาณเพื่อเป็นข้าราชการที่ดี
                                    และพลังของแผ่นดิน เนื่องในโอกาสพระราชพิธีมหามงคลเฉลิมพระชนมพรรษา ๖ รอบ ๒๘ กรกฎาคม
                                    ๒๕๖๗</h2>
                            </div>
                        </div>

                    </div>
                </div>

                <button @click="activeSlide = (activeSlide - 1 + slides) % slides; clearInterval(timer)"
                    class="absolute top-1/2 left-4 -translate-y-1/2 bg-white/30 hover:bg-white/50 rounded-full p-2.5 transition-colors">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
                    </svg>
                </button>

                <button @click="activeSlide = (activeSlide + 1) % slides; clearInterval(timer)"
                    class="absolute top-1/2 right-4 -translate-y-1/2 bg-white/30 hover:bg-white/50 rounded-full p-2.5 transition-colors">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                    </svg>
                </button>

                <div class="absolute bottom-4 left-1/2 -translate-x-1/2 flex space-x-2">
                    <template x-for="i in slides" :key="i">
                        <button @click="activeSlide = i - 1; clearInterval(timer)"
                            class="w-3 h-3 rounded-full transition-colors"
                            :class="activeSlide === i - 1 ? 'bg-white' : 'bg-white/50'">
                        </button>
                    </template>
                </div>
            </div>
        </section>

        <div class="max-w-screen-xl mx-auto p-2 my-2 bg-white rounded-lg">
            <div class="max-w-screen-md">
                <h2 class="text-[#801810] xl:text-5xl md:text-5xl text-4xl font-bold !leading-tight">สาส์นจากผู้อำนวยการ
                </h2>
            </div>
            <div class="grid lg:grid-cols-2 gap-16 lg:gap-12 mt-6">
                <div>
                    <p class="text-slate-600 md:text-md leading-relaxed mx-auto max-w-screen-xl">
                        ขอขอบคุณผู้ปกครองนักเรียน นักศึกษาที่ให้ความไว้วางใจวิทยาลัย
                        ที่ให้ความร่วมมืออย่างดีในกิจกรรมต่างๆ ของวิทยาลัยฯ
                        ขอขอบใจนักเรียนนักศึกษาทุกคนที่ปฏิบัติตนอยู่ในระเบียบของวิทยาลัย อยู่ในโอวาทของทุกคน
                        เป็นนักเรียนนักศึกษาที่ วิทยาลัยภาคภูมิใจ.
                    </p>

                    <div class="max-w-screen-md mt-2">
                        <h2 class="xl:text-xl md:text-xl text-xl font-sm !leading-tight text-[#801810]">
                            “เทคนิคตราดโฉมใหม่ ใส่ใจบุตรหลาน จัดการศึกษา เพื่อการมีงานทำ”</h2>
                    </div>

                    <div class="mt-12 flex gap-6 items-center flex-wrap">
                        <a href="">
                            <button type='button'
                                class="bg-[#55F5A3] hover:bg-green-400 transition-all text-slate-900 font-semibold text-[15px] rounded-full px-6 py-3 cursor-pointer">
                                Getting Started
                            </button>
                        </a>
                        <a href="javascript:void(0)"
                            class="text-slate-900 text-[15px] font-semibold underline max-sm:block whitespace-nowrap">
                            API Documentation
                        </a>
                    </div>

                    <div class="mt-12 flex flex-wrap gap-x-2 gap-y-2">
                        <a href="https://rms.trattc.ac.th/?p=login" target="_blank">
                            <img src="images/rms.png"
                                class="shrink-0 w-48 h-32 shadow-2xl rounded-md p-2 hover:scale-[1.05] transition-all"
                                alt="brand-logo1" />
                        </a>

                        <a href="https://std2018.vec.go.th/web/" target="_blank">
                            <img src="images/std02.png"
                                class="w-48 h-32 shrink-0 shadow-2xl rounded-md p-2 hover:scale-[1.05] transition-all"
                                alt="brand-logo2" />
                        </a>

                        <a href="https://admission.vec.go.th/web/Login.htm?mode=index" target="_blank">
                            <img src="images/std_register.png"
                                class="w-48 h-32 shrink-0 shadow-2xl rounded-md p-2 hover:scale-[1.05] transition-all"
                                alt="brand-logo3" />
                        </a>
                    </div>

                </div>

                <div class="max-w-full">
                    <img src='images/child2568.jpg'
                        class="shrink-0 shadow-2xl rounded-md object-contain hover:scale-[1.01] transition-all" />
                </div>
            </div>
        </div>

        <!-- Featured Post -->
        <div class="max-w-screen-xl mx-auto my-2 bg-white shadow-2xl rounded-lg">
            <section class="container mx-auto px-4 py-2">
                <h2 class="text-2xl font-bold text-amber-800 mb-8">บทความเด่น (Featured Post)</h2>
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <div class="md:flex shadow-2xl rounded-md p-2">
                        <div class="md:w-1/2">
                            <img src="https://images.unsplash.com/photo-1499750310107-5fef28a66643?w=800" alt="Featured"
                                class="w-full h-full object-cover">
                        </div>
                        <div class="md:w-1/2 p-8">
                            <div class="flex items-center space-x-2 text-sm text-gray-600 mb-4">
                                <span class="bg-blue-100 text-blue-600 px-3 py-1 rounded-full">Technology</span>
                                <span>•</span>
                                <span>March 15, 2024</span>
                            </div>
                            <h3 class="text-3xl font-bold text-gray-800 mb-4">The Future of Web Development</h3>
                            <p class="text-gray-600 mb-6">
                                Explore the latest trends and technologies shaping the future of web development.
                                From AI integration to progressive web apps, discover what's next in the digital world.
                            </p>
                            <a href="#"
                                class="inline-block bg-blue-600 text-white px-6 py-3 rounded-lg hover:bg-blue-700 transition">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Blog Posts Grid -->
            <section
                class="max-w-screen-xl mx-auto p-2 sm:p-5 md:p-3 mt-10 mb-15 relative shadow-2xl rounded-2xl font-[sarabun]">
                <div class="grid grid-cols-1 sm:grid-cols-12 gap-2 shadow rounded">
                    <div class="sm:col-span-6 lg:col-span-9 p-2 shadow-2xl rounded">
                        <h2 class="text-xl font-semibold text-amber-900 mb-8">โพสล่าสุด (Latest Posts)</h2>
                        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-2">
                            <!-- Blog Post 1 -->
                            <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition">
                                <div class="bg-gray-50">
                                    <img src="https://readymadeui.com/Imagination.webp" alt="Blog Post 1"
                                        class="w-full h-48 cursor-pointer object-cover object-top" />
                                </div>
                                <div class="p-6">
                                    <div class="flex items-center space-x-2 text-sm text-gray-600 mb-3">
                                        <span class="bg-green-100 text-green-600 px-3 py-1 rounded-full">Design</span>
                                        <span>March 12, 2024</span>
                                    </div>
                                    <h3 class="text-base font-semibold text-slate-900">Trends and Predictions</h3>
                                    <hr class="my-4 border-slate-300" />
                                    <p class="text-slate-600 text-[15px] mb-4 leading-relaxed">Stay ahead of the curve
                                        with the latest insights into upcoming industry trends, emerging technologies,
                                        and what they mean for the future.
                                    </p>
                                    <a href="" class="text-blue-600 font-semibold hover:text-blue-700">Read
                                        More →</a>
                                </div>
                            </div>

                            <!-- Blog Post 2 -->
                            <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition">
                                <div class="bg-gray-50">
                                    <img src="https://readymadeui.com/hacks-watch.webp" alt="Blog Post 2"
                                        class="w-full h-48 cursor-pointer object-cover object-top" />
                                </div>
                                <div class="p-6">
                                    <div class="flex items-center space-x-2 text-sm text-gray-600 mb-3">
                                        <span class="bg-green-100 text-green-600 px-3 py-1 rounded-full">Design</span>
                                        <span>March 12, 2024</span>
                                    </div>
                                    <h3 class="text-base font-semibold text-gray-800 mb-3">Hacks to Supercharge Your
                                        Day</h3>
                                    <hr class="my-4 border-slate-300" />
                                    <p class="text-gray-600 mb-4">
                                        Boost your productivity with simple, effective strategies to help you stay
                                        focused, energized, and motivated throughout the day.
                                    </p>
                                    <a href="" class="text-blue-600 font-semibold hover:text-blue-700">Read
                                        More →</a>
                                </div>
                            </div>

                            <!-- Blog Post 3 -->
                            <div class="bg-white rounded-lg shadow-md overflow-hidden hover:shadow-xl transition">
                                <div class="bg-gray-50">
                                    <img src="https://readymadeui.com/team-image.webp" alt="Blog Post 3"
                                        class="w-full h-48 cursor-pointer object-cover object-top" />
                                </div>
                                <div class="p-6">
                                    <div class="flex items-center space-x-2 text-sm text-gray-600 mb-3">
                                        <span class="bg-green-100 text-green-600 px-3 py-1 rounded-full">Design</span>
                                        <span>March 12, 2024</span>
                                    </div>

                                    <h3 class="text-base font-semibold text-gray-800 mb-3"> Innovators Changing the
                                        Game</h3>
                                    <hr class="my-4 border-slate-300" />
                                    <p class="text-gray-600 mb-4">
                                        Meet the minds reshaping industries with bold ideas and fresh thinking. Be
                                        inspired by real change-makers.
                                    </p>
                                    <a href="" class="text-blue-600 font-semibold hover:text-blue-700">Read
                                        More →</a>
                                </div>
                            </div>

                        </div>
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
                      {{-- pagination --}}
                        <section class="container mx-auto my-5 justify-items-center">
                            <nav class="flex space-x-2">
                                <button class="px-4 py-2 bg-gray-200 text-gray-600 rounded-lg hover:bg-gray-300">Previous</button>
                                <button class="px-4 py-2 bg-blue-600 text-white rounded-lg">1</button>
                                <button class="px-4 py-2 bg-gray-200 text-gray-600 rounded-lg hover:bg-gray-300">2</button>
                                <button class="px-4 py-2 bg-gray-200 text-gray-600 rounded-lg hover:bg-gray-300">3</button>
                                <button class="px-4 py-2 bg-gray-200 text-gray-600 rounded-lg hover:bg-gray-300">next</button>
                            </nav>
                        </section>
                </div>
            </section>
        </div>
    </div>
</div>

<script src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js" defer></script>
