import 'package:flutter/material.dart';
import 'package:flutter_local_db/db/functions/db_functions.dart';
import 'package:flutter_local_db/screen/widgets/add_student.dart';
import 'package:flutter_local_db/screen/widgets/list_student.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AddStudentWidget(),
          const Expanded(
            child: ListStudentWidget(),
          ),
        ],
      )),
    );
  }
}
