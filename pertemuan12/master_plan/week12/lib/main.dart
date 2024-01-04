import 'package:flutter/material.dart';
import 'package:week12/models/plan.dart';
import './views/plan_screen.dart';
import './provider/plan_provider.dart';
import './views/plan_creator_screen.dart';

void main() => runApp(MasterPlanApp());

//Prak 1 Langkah 5
class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({Key? key}) : super(key: key);

  @override
//   Widget build(BuildContext context) {
// //Prak 2 langkah 2
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.purple),
//       home: PlanProvider(
//         notifier: ValueNotifier<Plan>(const Plan()),
//         child: const PlanScreen(),
//       ),
//     );
//   }

// Prak 3 langkah 2
  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const PlanScreen(),

        // Prak 3 langkah 9
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
