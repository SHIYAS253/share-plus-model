import 'package:flutter/material.dart';
import 'package:model_class_sample/controller/home_screen_controller.dart';

import '../../model/my_name_model.dart';
import 'widgets/my_name_card.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  HomeScreenController obj = HomeScreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
 
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          obj.addName(MyNameModel(name: "amaljith"));
        });
      }),
      body: SafeArea(
          child: ListView.builder(
              itemCount: obj.myNameList.length,
              itemBuilder: (context, index) => MyCard(
                    name: obj.myNameList[index].name,
                    color: obj.myNameList[index].containerColor,
                    onDeletePressed: () {
                      obj.deleteName(index);
                      //setstate(() {});
                    },
                  )
                  )
                  ),
    );
  }
}
