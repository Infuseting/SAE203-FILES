<nav class="bg-gray-800" data-aos="fade-down"
     data-aos-easing="linear"
     data-aos-duration="500">
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div class="flex h-16 items-center justify-between">
            <div class="flex items-center">
                <div class="shrink-0">
                    <img class="size-8" src="https://placehold.co/32x32" alt="Improvz Logo">
                </div>
                <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4">
                        <a href="/" class="rounded-md <?= (getRouter() === '/home' ? "bg-gray-900" : "bg-gray-800") ?> hover:bg-gray-900 px-3 py-2 text-sm font-medium text-white" aria-current="page">Home</a>
                    </div>
                </div>
            </div>
            <!--
            <div>
                <div class="hidden lg:flex lg:flex-1 lg:justify-end">
                    <a href="/client/login" class="rounded-md bg-gray-800 hover:bg-gray-900 px-3 py-2 text-sm font-medium text-white">Log in <span aria-hidden="true">&rarr;</span></a>
                </div>
            </div>
            -->
        </div>
    </div>
</nav>
