import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student/home/appbar_bottomnavteacher.dart';

class Createclassdetailscontroller extends GetxController{
  static Createclassdetailscontroller get instance => Get.find();


///Textformfield variable declaration
final teachername = TextEditingController();
final classname = TextEditingController();
final subjectname = TextEditingController();
final formkey = GlobalKey<FormState>();
final currentuser = FirebaseAuth.instance.currentUser!.email;



void registerclass(String teachername, String classname , String subjectname) async{
  if(formkey.currentState!.validate()) {
    await FirebaseFirestore.instance.collection('Class').doc(currentuser).collection('i').add({
      "Teacher Name" : teachername,
      "Class Name" : classname,
      "Subject Name" : subjectname,
      
    });
    Get.to(() => const Homepagelayout());
  }
}
}