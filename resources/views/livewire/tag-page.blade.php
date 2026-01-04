<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://fonts.googleapis.com/css2?family=Sarabun&display=swap" rel="stylesheet">
    <style>
        .sarabun {
            font-family: "Sarabun", sans-serif;
            font-weight: 400;
            font-style: normal;
        }
    </style>

    <title>{{ $title ?? 'Page Title' }}</title>

    <!-- Styles / Scripts -->
    @livewireStyles
    @vite(['resources/css/app.css', 'resources/js/app.js'])

</head>

<body class="min-h-screen flex flex-col justify-between bg-gray-100 sarabun">
    @livewire('partials.navbar')
    <main>
        @include('livewire.bloglist-page', ['sectionTitle' => $tag, 'posts' => $posts])
    </main>
    @livewire('partials.footer')
    @livewireScripts
</body>

</html>
