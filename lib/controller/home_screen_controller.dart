import 'package:flutter/material.dart';
import 'package:model_class_sample/model/my_name_model.dart';

class HomeScreenController {
  List<MyNameModel> myNameList = [
    MyNameModel(name: "shiyas", containerColor: Color.fromARGB(255, 20, 232, 176))
  ];

  void addName(MyNameModel newNameModel) {
    myNameList.add(newNameModel);
  }

  void deleteName(int index) {
    myNameList.removeAt(index);
  }
}
         