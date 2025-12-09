<?php

namespace App\Filament\Resources\Categories\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class CategoryForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->label(__('resource.category.fields.name'))
                    ->live(onBlur: true)
                    ->afterStateUpdated(fn(Set $set, ?string $state) => $set('slug', Str::slug($state)))
                    ->minLength(1)
                    ->maxLength(150)
                    ->placeholder('Enter name')
                    ->required(),

                TextInput::make('slug')
                    ->label(__('resource.category.fields.slug'))
                    ->required()
                    ->unique(),

                RichEditor::make('description')
                    ->label(__('resource.category.fields.description')),

                FileUpload::make('image')
                    ->disk('public')
                    ->directory('category/images')
                    ->visibility('public')
                    ->image(),

                Select::make('parent_id')
                    ->label(__('resource.category.fields.parent_category'))
                    ->relationship('parent', 'name')
                    ->searchable(),

                Toggle::make('is_active')
                    ->label(__('resource.category.fields.status'))
                    ->required(),
            ]);
    }
}
