import 'package:flutter/material.dart';
import 'package:waref/widgets/default_appbar.dart';

import '../widgets/date_choice.dart';
import '../widgets/date_time_line.dart';
import '../widgets/text_area_field.dart';
import '../widgets/text_form_field.dart';

class ShowTask extends StatefulWidget {
  const ShowTask({super.key});

  @override
  State<ShowTask> createState() => ShowTaskState();
}

class ShowTaskState extends State<ShowTask> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const MainAppBar(
        title: "examen igl",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DateTimeLine(),
            const FormTextField(
              hintText: "Titre de la tâche",
            ),
            const TextAreaField(
              hintText: "Description de la tâche",
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Date de début"),
                Text("Date de fin"),
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DateChoice(height: height),
                DateChoice(height: height),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
