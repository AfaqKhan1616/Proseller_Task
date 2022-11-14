import 'package:flutter/material.dart';
import 'package:pro_seller/utils/theme.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
    required this.headingText,
    required this.descriptionText,
  }) : super(key: key);
  final String headingText;
  final String descriptionText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: MyTheme.lightGrey,
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Image.asset("assets/images/dummyPerson.png",
                        fit: BoxFit.contain),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    headingText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    descriptionText,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
