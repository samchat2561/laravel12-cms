<div class="max-w-screen-xl mx-auto my-2 bg-white shadow-2xl rounded-lg">
    {{-- Slider --}}
    <section class="max-w-screen-xl mx-auto p-2 my-2 bg-white rounded-lg">
        <div x-data="{ activeSlide: 0, slides: 3, timer: null }" x-init="timer = setInterval(() => activeSlide = (activeSlide + 1) % slides, 5000)" class="max-w-8xl mx-auto relative group">
            <div class="text-center text-2xl text-teal-600 my-2">"ข่าวสารประชาสัมพันธ์ <span
                    class="text-amber-600">วิทยาลัยเทคนิคตราด</span>"</div>
            <div class="relative overflow-hidden rounded-lg shadow-xl">
                <div class="flex transition-transform duration-500 ease-in-out md:h-[500px]"
                    :style="`transform: translateX(-${activeSlide * 100}%)`">
                    <div class="min-w-full bg-blue-500 flex items-center justify-center text-white text-4xl relative">
                        <img src="https://images.unsplash.com/photo-1680725779155-456faadefa26" alt="Random image">
                        <div class="absolute inset-10 flex items-end justify-center">
                            <h2 class="text-white text-base">1.ถวายสัตย์ปฏิญาณเพื่อเป็นข้าราชการที่ดี
                                และพลังของแผ่นดิน เนื่องในโอกาสพระราชพิธีมหามงคลเฉลิมพระชนมพรรษา ๖ รอบ ๒๘ กรกฎาคม
                                ๒๕๖๗</h2>
                        </div>
                    </div>

                    <div class="min-w-full bg-green-500 flex items-center justify-center text-white text-4xl relative">
                        <img src="https://images.unsplash.com/photo-1759675795062-a657fcb278b1" alt="">
                        <div class="absolute inset-10 flex items-end justify-center">
                            <h2 class="text-white text-base">2.ถวายสัตย์ปฏิญาณเพื่อเป็นข้าราชการที่ดี
                                และพลังของแผ่นดิน เนื่องในโอกาสพระราชพิธีมหามงคลเฉลิมพระชนมพรรษา ๖ รอบ ๒๘ กรกฎาคม
                                ๒๕๖๗</h2>
                        </div>
                    </div>

                    <div class="min-w-full bg-purple-500 flex items-center justify-center text-white text-4xl relative">
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

    <section class="max-w-screen-xl mx-auto p-2 my-2 bg-white rounded-lg">
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
    </section>

    <!-- Blog -->
    <!-- Featured Post -->
    <section class="max-w-screen-xl mx-auto p-2 bg-white rounded-lg">
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
                        อนาคตของการพัฒนาเว็บมุ่งเน้นไปที่การปรับแต่งเฉพาะบุคคลที่ขับเคลื่อนด้วย AI ประสบการณ์เสมือนจริง
                        (AR/VR) การกระจายอำนาจ (Web3) และประสิทธิภาพที่เพิ่มขึ้น (WebAssembly, Edge Computing)
                        โดยเปลี่ยนไปสู่การออกแบบที่รวดเร็ว ปลอดภัย และเน้นผู้ใช้เป็นศูนย์กลางมากขึ้น
                        พร้อมทั้งให้ความสำคัญกับการเข้าถึงได้ง่าย แนวโน้มสำคัญ ได้แก่ แพลตฟอร์ม No-Code/Low-Code, PWA
                        ขั้นสูง, อินเทอร์เฟซเสียง (VUI) และเครื่องมือ AI ที่ช่วยเสริมศักยภาพนักพัฒนา
                        โดยให้ความสำคัญกับความปลอดภัยทางไซเบอร์ที่แข็งแกร่งและการออกแบบที่ครอบคลุมและเน้นอุปกรณ์พกพาเป็นหลัก
                        เพื่อให้เว็บมีความโต้ตอบ ชาญฉลาด และเข้าถึงได้ง่ายยิ่งขึ้น
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
    @section('content')
        @include('livewire.bloglist-page', ['sectionTitle' => 'โพสล่าสุด', 'posts' => $posts])
    @endsection

</div>

<script src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js" defer></script>
