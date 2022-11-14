import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.headerText,
    required this.color,
  }) : super(key: key);
  final String headerText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: color,
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/dummyPerson.png",
                            fit: BoxFit.contain),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      headerText,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
