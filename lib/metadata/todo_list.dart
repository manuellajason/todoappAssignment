class TodoList{
  final String title;
  final String description;
  final String deadline;
  final bool isCompleted;

  TodoList(this.title,this.description,this.deadline,this.isCompleted);

}

List<TodoList> todolist = [
  TodoList("Church", "Ushers must be available", "2021-05-12", true),
  TodoList("Shopping Mall", "Food Stuffs not available at the moment", "2021-08-10", false),
  TodoList("Cluster of School", "All Student must be repsent 0n time", "2022-01-01", false),
  TodoList("Sport complex", "All Players should report before wednesday", "2021-9-19", true ),
];