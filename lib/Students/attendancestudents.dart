
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/controller/addstudentscontroller.dart';

class AttendanceStudents extends StatelessWidget {
  AttendanceStudents({super.key, required this.classname});
  final String classname;

  final data = Get.put(Countercontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          title: const Text('Attendance Record'),
        ),
        // body: SingleChildScrollView(
          
        // ),
      ),
    );
  }
}
