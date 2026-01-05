<?php

namespace App\Filament\Widgets;

use App\Models\Post;
use App\Models\User;
use BezhanSalleh\FilamentShield\Traits\HasWidgetShield;
use Filament\Support\Enums\IconPosition;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\Cache;

class StatsOverview extends StatsOverviewWidget
{
    use HasWidgetShield;
    protected ?string $pollingInterval = '10s';
    protected function getStats(): array
    {
        $stats = Cache::remember('dashboard_stats', now()->addMinute(5), function () {
            $posts = Post::published()
                ->selectRaw("
                                SUM(CASE WHEN type = 'post' THEN 1 ELSE 0 END) as total_posts,
                                SUM(CASE WHEN type = 'page' THEN 1 ELSE 0 END) as total_pages
                            ")
                ->first();

            return [
                'totalPosts' => $posts->total_posts,
                'totalPages' => $posts->total_pages,
                'totalUsers' => User::count()
            ];
        });
        return [
            Stat::make('Total Post', $stats['totalPosts'])
                ->description('Total number of post')
                ->descriptionIcon('heroicon-o-document-text', IconPosition::Before)
                ->chart([7, 2, 10, 3, 15, 4, 17])
                ->color('success'),
            Stat::make('Total Pages', $stats['totalPages'])
                ->description('Total number of pages')
                ->descriptionIcon('heroicon-o-document-check', IconPosition::Before)
                ->chart([7, 2, 10, 3, 15, 4, 17])
                ->color('warning'),
            Stat::make('Total Users', $stats['totalUsers'])
                ->description('Total number of users')
                ->descriptionIcon('heroicon-o-user-group', IconPosition::Before)
                ->chart([7, 2, 10, 3, 15, 4, 17])
                ->color('primary'),
        ];
    }

    protected function getHeading(): ?string
    {
        return 'Analytics';
    }

    protected function getDescription(): ?string
    {
        return 'An overview of some analytics.';
    }
}
