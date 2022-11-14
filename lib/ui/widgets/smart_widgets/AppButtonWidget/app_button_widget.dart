import 'package:flutter/material.dart';
import 'package:pro_seller/utils/theme.dart';

class AppButtonWidget extends StatefulWidget {
  AppButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.iconVisible = false,
      this.textColor,
      this.borderColor,
      this.backgroundColor,
      this.disable = false,
      this.leftIcon = false,
      this.uploadIcon = false})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final bool iconVisible;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final bool? disable;
  final bool? leftIcon;
  final bool? uploadIcon;

  @override
  State<AppButtonWidget> createState() => _AppButtonWidgetState();
}

class _AppButtonWidgetState extends State<AppButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextButton(
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith((states) => BorderSide(
              width: 0.5,
              color: widget.disable == true
                  ? MyTheme.lightGrey
                  : widget.borderColor ?? MyTheme.mainColorLight)),
          padding: MaterialStateProperty.resolveWith(
              (states) => const EdgeInsets.symmetric(vertical: 16)),
          shape: MaterialStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          backgroundColor: MaterialStateProperty.resolveWith((states) =>
              widget.disable == true
                  ? MyTheme.lightGrey
                  : widget.backgroundColor ?? MyTheme.mainColorLight),
        ),
        onPressed: widget.disable == true ? null : widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.leftIcon == true
                ? Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.add,
                      color: MyTheme.mainColorLight,
                    ),
                  )
                : Container(),
            widget.uploadIcon == true
                ? Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_upward,
                      color: MyTheme.mainColorLight,
                    ),
                  )
                : Container(),
            Text(
              widget.text,
              style: TextStyle(
                  color: widget.textColor ?? Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
            ),
            Container(
              child: widget.iconVisible == true
                  ? Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
