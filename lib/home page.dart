import 'package:flutter/material.dart';
import 'package:smartquizz/quizpage.dart';

class Coverpage extends StatelessWidget {
  const Coverpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.red,
        Colors.red,
        Colors.white,
        Colors.white,
        Colors.red,
        Colors.red
      ])),
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quizpage(),));
              },
                child: Text(
                  "Get Start",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
      ),
    );
  }
}
