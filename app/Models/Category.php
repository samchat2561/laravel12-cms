<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Category extends Model
{
    protected $fillable = [
        "name",
        "slug",
        "description",
        "sort",
        "image",
        "is_active",
        "parent_id",
    ];

    public function parent()
    {
        return $this->belongsTo(self::class);
    }

    public function children()
    {
        return $this->hasMany(self::class);
    }

    public function posts(): BelongsToMany
    {
        return $this->belongsToMany(Post::class, 'category_posts');
    }
    
    // scopes
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }
}
