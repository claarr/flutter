//Prak 1 Langkah 3
import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  
  const Plan({this.name = '', this.tasks = const []});
  //Prak 2 Langkah 3
  int get completedCount => tasks
  .where((task) => task.complete)
  .length;

  String get completenessMessage =>
    '$completedCount out of ${tasks.length} tasks';
  
}