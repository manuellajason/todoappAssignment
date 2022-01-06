import 'package:flutter/material.dart';
import 'package:todoapp/metadata/todo_list.dart';
import 'package:todoapp/metadata/utils.dart';

class ListTileCard extends StatelessWidget {
  final TodoList todoList;
  final Function ontap;
  const ListTileCard({ Key? key, required this.todoList, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Card(
        color:Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          horizontalTitleGap: 0,
          leading:  CircleAvatar(
            radius:10,
            backgroundColor: todoList.isCompleted ? Colors.green.shade300 : Colors.grey.shade200,
            child: Icon(
              Icons.done,
              color: todoList.isCompleted ? Colors.white : Colors.black54,
              size:15),
          ),
          title:  Text(
            todoList.title,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold
              ),),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: (){
                  ontap();
                },
                child: const Icon(
                  Icons.edit,color: 
                  editcolor,size: 17
                )),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
              const Icon(Icons.delete,color: deletecolor,size:17)
            ],
          ),
        ),
        
      ),
    );
  }
}