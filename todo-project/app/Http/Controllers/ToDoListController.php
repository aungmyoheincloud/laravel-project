<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\ToDoList;
use Illuminate\Http\Request;

class ToDoListController extends Controller
{
    public function add(Request $request)
    {
        $task = new ToDoList();
        $task->task = $request['task'];

        $task->save();

        $tasks = ToDoList::all();
        
        return view('welcome', ['tasks' => $tasks]);
    }

    public function delete($id)
    {
        ToDoList::destroy($id);
        $tasks = ToDoList::all();
        
        return view('welcome', ['tasks' => $tasks]);
    }
}