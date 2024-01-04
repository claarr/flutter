import 'package:week12/provider/plan_provider.dart';

import '../models/data_layer.dart';
import 'package:flutter/material.dart';

//Prak 1 Langkah 6
class PlanScreen extends StatefulWidget {
  // 
   //Prak 3 Langkah 3
  final Plan plan;
  const PlanScreen({super.key, required this.plan});
  

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Plan plan = const Plan();
  // Prak 1 Langkah 10
  late ScrollController scrollController;
  //P3 Langkah 5
  Plan get plan => widget.plan;

  // Prak 1 langkah 11
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  // @override
  // Widget build(BuildContext context) {
  //   ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);
  //  return Scaffold(
  //   // ganti ‘Namaku' dengan Nama panggilan Anda
  //   appBar: AppBar(title: const Text('Master Plan Evi')),
  //   body: ValueListenableBuilder<Plan>(
  //   // Prak 2 Langkah 9
  //   valueListenable: PlanProvider.of(context),
  //      builder: (context, plan, child) {
  //        return Column(
  //          children: [
  //            Expanded(child: _buildList(plan)),
  //            SafeArea(child: Text(plan.completenessMessage))
  //          ],
  //        );
  //      },
  //    ),
  //   floatingActionButton: _buildAddTaskButton(context),
  //  );
  // }

  // Prak 3 Langkah 7
  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(
        context,
      ),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == plan.name);
        if (planIndex != -1) {
          Plan currentPlan = planNotifier.value[planIndex];
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
            ..add(const Task());
          List<Plan> updatedPlans = List<Plan>.from(planNotifier.value);
          updatedPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
          planNotifier.value = updatedPlans;
        }
      },
    );
  }

  //Prak 1 Langkah 7
  // Widget _buildAddTaskButton() {
  //   return FloatingActionButton(
  //   child: const Icon(Icons.add),
  //   onPressed: () {
  //     setState(() {
  //       plan = Plan(
  //       name: plan.name,
  //       tasks: List<Task>.from(plan.tasks)
  //       ..add(const Task()),
  //     );
  //     });
  //   },
  //   );
  // }

  //Prak 2 Langkah 5
//   Widget _buildAddTaskButton(BuildContext context) {
//   ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
//   return FloatingActionButton(
//     child: const Icon(Icons.add),
//     onPressed: () {
//       Plan currentPlan = planNotifier.value;
//       planNotifier.value = Plan(
//         name: currentPlan.name,
//         tasks: List<Task>.from(currentPlan.tasks)..add(const Task()),
//       );
//     },
//   );
// }

  //Prak 1 Langkah 8
  // Widget _buildList() {
  //   // Prak1 Langkah 12
  //     return ListView.builder(
  //     controller: scrollController,
  //     keyboardDismissBehavior: Theme.of(context).platform ==
  //     TargetPlatform.iOS
  //           ? ScrollViewKeyboardDismissBehavior.onDrag
  //           : ScrollViewKeyboardDismissBehavior.manual,
  //   itemCount: plan.tasks.length,
  //   itemBuilder: (context, index) =>
  //   _buildTaskTile(plan.tasks[index], index),
  //   );
  // }

  //Prak 2 Langkah 7
  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

// Prak 1 Langkah 9

  //Prak 2 Langkah 6
  // Widget _buildTaskTile(Task task, int index, BuildContext context) {
  // ValueNotifier<Plan> planNotifier = PlanProvider.of(context);
  //   return ListTile(
  //     leading: Checkbox(
  //       value: task.complete,
  //       onChanged: (selected) {
  //         Plan currentPlan = planNotifier.value;
  //         planNotifier.value = Plan(
  //           name: currentPlan.name,
  //           tasks: List<Task>.from(currentPlan.tasks)
  //             ..[index] = Task(
  //               description: task.description,
  //               complete: selected ?? false,
  //             ),
  //         );
  //       }),
  //     title: TextFormField(
  //       initialValue: task.description,
  //       onChanged: (text) {
  //         Plan currentPlan = planNotifier.value;
  //         planNotifier.value = Plan(
  //           name: currentPlan.name,
  //           tasks: List<Task>.from(currentPlan.tasks)
  //             ..[index] = Task(
  //               description: text,
  //               complete: task.complete,
  //             ),
  //         );
  //       },
  //     ),
  //   );
  // }

  // Prak 3 Langkah 8
  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          List<Plan> currentPlans = List<Plan>.from(planNotifier.value);
          Plan currentPlan =
              currentPlans.firstWhere((p) => p.name == plan.name);
          int planIndex = currentPlans.indexWhere((p) => p.name == plan.name);
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);
          updatedTasks[index] = Task(
            description: task.description,
            complete: selected ?? false,
          );

          currentPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          planNotifier.value = currentPlans;
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          List<Plan> currentPlans = List<Plan>.from(planNotifier.value);
          Plan currentPlan =
              currentPlans.firstWhere((p) => p.name == plan.name);
          int planIndex = currentPlans.indexWhere((p) => p.name == plan.name);
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks);
          updatedTasks[index] = Task(
            description: text,
            complete: task.complete,
          );

          currentPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          planNotifier.value = currentPlans;
        },
      ),
    );
  }

  // Prak 1 Langkah 13
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}