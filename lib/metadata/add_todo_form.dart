import 'package:flutter/material.dart';
import 'package:todoapp/metadata/utils.dart';

class AddTodoForm extends StatefulWidget {
  const AddTodoForm({Key? key}) : super(key: key);

  @override
  _AddTodoFormState createState() => _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();

    return Form(
        child: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          "ADD TODO",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: editcolor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        TextFormField(
          decoration: const InputDecoration(
              hintText: 'Title', border: OutlineInputBorder()),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        TextFormField(
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
                "${selectedDate.toLocal()}".split(' ')[0],
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
                "Save",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
        )
      ],
    ));
  }
}
