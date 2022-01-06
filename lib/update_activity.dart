import 'package:flutter/material.dart';
import 'package:todoapp/metadata/todo_list.dart';
import 'package:todoapp/metadata/utils.dart';

class UpdateTodo extends StatefulWidget {
  final TodoList list;

  const UpdateTodo({Key? key, required this.list}) : super(key: key);

  @override
  _UpdateTodoState createState() => _UpdateTodoState();
}

class _UpdateTodoState extends State<UpdateTodo> {
  @override
  Widget build(BuildContext context) {
    final TodoList mylist = widget.list;
    DateTime selectedDate = DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation:0.0,
          title: const Text(
            "Update Todo",
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black54),
        ),
        body: Form(
            child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
            TextFormField(
              controller: TextEditingController(text: mylist.title),
              decoration: const InputDecoration(
                  hintText: 'Title', border: OutlineInputBorder()),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
            TextFormField(
              controller: TextEditingController(text: mylist.description),
              decoration: const InputDecoration(
                  hintText: 'Description', border: OutlineInputBorder()),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
            const Text(
              "Deadline",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.black54, width: 1)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                            helpText: 'Select Deadline',
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2025));
                      },
                      icon: const Icon(
                        Icons.date_range_outlined,
                        color: deletecolor,
                      )),
                  Text(
                    mylist.deadline,
                    // "${selectedDate.toLocal()}".split(' ')[0],
                    style: const TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(editcolor)),
                  child: const Text(
                    "Update",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            )
          ],
        )));
  }
}
