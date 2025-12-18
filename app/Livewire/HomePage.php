<?php

namespace App\Livewire;

use Livewire\Attributes\Title;
use Livewire\Component;

class HomePage extends Component
{
    #[Title('วิทยาลัยเทคนิคตราด')]
    public function render()
    {
        return view('livewire.home-page');
    }
}
