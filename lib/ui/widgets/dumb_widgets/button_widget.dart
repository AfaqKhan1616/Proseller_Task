import 'package:flutter/material.dart';
import 'package:pro_seller/utils/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.iconName,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final Icon iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith(
              (states) => BorderSide(width: 0.5, color: MyTheme.blackColor)),
          padding: MaterialStateProperty.resolveWith(
              (states) => const EdgeInsets.symmetric(vertical: 16)),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => MyTheme.whiteColor),
        ),
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(margin: EdgeInsets.only(right: 10), child: iconName),
            Text(
              text,
              style: TextStyle(
                  color: MyTheme.blackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
