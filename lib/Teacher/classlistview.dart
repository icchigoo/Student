import 'package:cloud_firestore/cloud_firestore.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'createclass.dart';
import 'createclassdetails.dart';
import 'menu.dart';

class Classlistview extends StatelessWidget {
  const Classlistview({super.key});

  @override
  Widget build(BuildContext context) {
     return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Class').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.docs.isEmpty || snapshot.data == null) {
              return const Createclass();
            } else {
              return Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                      onPressed: () {
                        Get.to(() => Createclassdetails());
                      },
                      icon: const Icon(Icons.add)),
                  centerTitle: true,
                  title: const Text('Classes'),
                ),
                body: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Select One Card To View ',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data == null
                              ? 0
                              : snapshot.data!.docs.length,
                          itemBuilder: (_, index) {
                            DocumentSnapshot documentSnapshot =
                                snapshot.data!.docs[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(50, 30, 50, 15),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => const Menupage());
                                },
                                child: Card(
                                  color:
                                      const Color.fromARGB(255, 143, 140, 140),
                                  elevation: 15,
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30, horizontal: 30),
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                documentSnapshot[
                                                    'Subject Name'],
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    documentSnapshot[
                                                        'Teacher Name'],
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    documentSnapshot[
                                                        'Class Name'],
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              );
            }
          } else {
            return const Center(
              child: Text('Something Wrong'),
            );
          }
        },
      );
    
  }
}