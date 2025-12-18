<?php

namespace App\Filament\Forms;

use App\Models\Menu;
use Filament\Forms\Components\Select;

class CustomMenuField
{
    public static function make($name)
    {
        return Select::make($name)
            ->searchable()
            ->label('Choose Menu')
            ->options(Menu::pluck('name', 'id'));
    }
}
