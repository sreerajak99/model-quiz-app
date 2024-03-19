import 'package:flutter/material.dart';
import 'package:smartquizz/listpage.dart';
import 'package:smartquizz/nextcontainer.dart';
import 'package:smartquizz/optioncontainer.dart';
import 'package:smartquizz/qustioncontainer.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  AppData qustion = AppData();
  int inDex = 0, mark = 0;
  int? selectedIndex;
  bool flag = true;
  Color? colorData;

  select(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Qustioncontainer(text: qustion.Qustion[inDex]["questions"]),
        Expanded(
          // height: 300,
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ListView.builder(
              shrinkWrap: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: qustion.Qustion[inDex]["options"].length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (qustion.Qustion[inDex]["options"][index] ==
                        qustion.Qustion[inDex]["Answer"]) {
                      selectedIndex = index;
                      mark = mark + 1;
                      colorData=Colors.green;
                    } else if (qustion.Qustion[inDex]["options"][index] !=
                        qustion.Qustion[inDex]["Answer"][index]) {
                      colorData=Colors.red;
                    }
                    setState(() {});
                  },
                  child: Optionconsection(
                    color: selectedIndex == index ? Colors.blue:Colors.green,
                    text: qustion.Qustion[inDex]["options"][index],
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Next(
            Ontap: () {
              setState(() {
                inDex++;

                if (inDex == qustion.Qustion.length) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(title: Text("your mark is $mark"));
                      });
                  inDex = 0;
                  select(inDex);
                }
              });
            },
          ),
        )
      ]),
    );
  }
}
