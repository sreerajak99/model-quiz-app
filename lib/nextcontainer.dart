import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  const Next({super.key, required this.Ontap});

  final VoidCallback Ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(onTap: Ontap,
          child: Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text("Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
