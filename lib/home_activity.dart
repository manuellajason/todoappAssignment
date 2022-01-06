import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoapp/metadata/add_todo_form.dart';
import 'package:todoapp/metadata/list_tile_card.dart';
import 'package:todoapp/metadata/todo_list.dart';
import 'package:todoapp/metadata/utils.dart';
import 'package:todoapp/update_activity.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Colors.grey[200],
            elevation: 2.0,
            leading: const Icon(Icons.menu, color: Colors.black54),
            centerTitle: true,
            title: const Text("My Todo",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications, color: Colors.black54))
            ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: editcolor,
          child: const Icon(Icons.add_task, color: Colors.white),
          elevation: 8,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddTodoForm();
                });
          },
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: List.generate(todolist.length, (index) {
              return ListTileCard(
                todoList: todolist[index],
                ontap: (){
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context){
                      return UpdateTodo(
                        list: todolist[index],
                      );
                  }));
                },
              );
            }),
          ),
        ));
  }
}
