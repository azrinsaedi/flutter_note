import 'package:flutter/material.dart';
import 'package:flutter_note/model/task.model.dart';

class HomeScreen extends StatelessWidget{
  @override
  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome List App'),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
          List.generate(taskList.length, (index) => TaskContainer(task: taskList[index])),
      ),
    );

  }
}

class TaskContainer extends StatelessWidget {
  final Task task;

  TaskContainer({required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF1F1F1),
          border: Border.all(color: Colors.grey.shade300),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              task.description,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}