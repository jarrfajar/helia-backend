<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\CategoryPostRequest;
use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $category = Category::with('rooms')->get();

        return new CategoryResource(true, 'List category', $category);
    }

    public function store(CategoryPostRequest $request)
    {
        $category = Category::create($request->all());

        return new CategoryResource(true, 'Data category Berhasil Ditambahkan!', $category);
    }

    public function show(Category $category)
    {
        $id = $category->id;
        $category = Category::where('id', $id)->get();

        return new CategoryResource(true, 'Category Ditemukan!', $category);
    }

    public function update(CategoryPostRequest $request, Category $category)
    {
        $category->update($request->all());

        return new CategoryResource(true, 'Data category Berhasil Diubah!', $category);
    }
    
    public function destroy(Category $category)
    {
        $category->delete();

        return new CategoryResource(true, 'Data category Berhasil Dihapus!', $category);
    }
}
