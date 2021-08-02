import 'package:flutter/material.dart';
import 'package:nursery/Screens/Home/Model.dart';
import 'Model.dart';

class get_Images extends StatelessWidget {

  TaskModel taskModel;
  List<TaskModel> items=[
    TaskModel("kids1") ,
    TaskModel("kids2") ,
    TaskModel("kids3") ,
    TaskModel("kids4") ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Images",
          style: TextStyle(
            letterSpacing: 5.0,
            color: Color.fromRGBO(174, 232, 228, 1),
            fontFamily: "pangolin",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/welcome_background.jpg"),
                    fit: BoxFit.cover)),
          ),
          // ListView.builder(
          //   itemCount: items.length,
          //     itemBuilder: (context , index) {
                    //     return Card(
          //     child: ListTile(
          //       title: Text(items[index].name),
          //     ),
          //     );
          //     }
          // //
          // )
        ],
      ),
    );
  }
}
