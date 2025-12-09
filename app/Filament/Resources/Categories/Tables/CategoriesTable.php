<?php

namespace App\Filament\Resources\Categories\Tables;

use Filament\Actions\Action;
use Filament\Actions\BulkAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Notifications\Notification;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Support\Collection;

class CategoriesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->reorderable('sort')
            ->defaultSort('sort', 'asc')
            ->columns([
                TextColumn::make('name')
                    ->label(__('resource.category.fields.name'))
                    ->searchable(),

                TextColumn::make('slug')
                    ->label(__('resource.category.fields.slug'))
                    ->searchable(),

                // TextColumn::make('sort')
                //     ->numeric()
                //     ->sortable(),

                ImageColumn::make('image')
                    ->disk('public'),

                IconColumn::make('is_active')
                    ->label(__('resource.category.fields.status'))
                    ->boolean(),

                TextColumn::make('parent.name')
                    ->label(__('resource.category.fields.parent_category'))
                    ->numeric()
                    ->sortable(),

                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
                DeleteAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                    BulkAction::make('toggle_status')
                        ->label(__('resource.category.action.toggle'))
                        ->action(function (Collection $records) {
                            foreach ($records as $record) {
                                $record->is_active = !$record->is_active;
                                $record->save();
                            }
                            Notification::make()
                                ->title(__('resource.notification.success.default_title'))
                                ->title(__('resource.notification.success.default_body'))
                                ->success()
                                ->send();
                        })
                ]),
            ]);
    }
}
