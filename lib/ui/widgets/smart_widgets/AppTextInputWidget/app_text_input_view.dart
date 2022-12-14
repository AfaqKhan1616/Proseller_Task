import 'package:flutter/material.dart';
import 'package:pro_seller/utils/theme.dart';

class AppTextField extends StatefulWidget {
  final String? labelText;
  final String? errorText;
  final String? placeholder;
  final bool isPassword;
  final bool touchableIcon;
  final Function(String?)? validator;
  final Function(String?)? onChanged;

  const AppTextField(
      {Key? key,
      this.labelText,
      this.errorText,
      this.placeholder,
      this.isPassword = false,
      this.touchableIcon = false,
      this.validator,
      this.onChanged,
      this.keyboardType = TextInputType.emailAddress})
      : super(key: key);
  final TextInputType keyboardType;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool hidePassword = true;
  String value = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.labelText ?? "",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: widget.errorText == null && value.isNotEmpty
                    ? Colors.green
                    : widget.errorText == null
                        ? Colors.black
                        : Colors.red,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            keyboardType: widget.keyboardType,
            style: TextStyle(
                color: widget.errorText == null ? Colors.green : Colors.red,
                fontStyle: FontStyle.italic),
            obscureText: widget.isPassword && hidePassword,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                // filled: true,
                // fillColor: Color(0xFFACE5EE),
                suffixIcon: widget.touchableIcon && widget.touchableIcon == true
                    ? IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: widget.errorText == null
                              ? Colors.green
                              : Colors.red,
                        ),
                        onPressed: () {
                          hidePassword = !hidePassword;
                          setState(() {});
                        },
                      )
                    : widget.errorText == null && value.isNotEmpty
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : widget.errorText != null
                            ? Icon(
                                Icons.error,
                                color: widget.errorText == null
                                    ? Colors.grey
                                    : Colors.red,
                              )
                            : null,
                hintText: widget.placeholder,
                hintStyle: TextStyle(
                    fontStyle: FontStyle.italic, color: MyTheme.lightGrey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: MyTheme.lightGrey, width: 0.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: widget.errorText == null && value.isNotEmpty
                        ? Colors.green
                        : Colors.grey,
                  ),
                ),
                errorText: widget.errorText),
            onChanged: (value) {
              this.value = value;
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
              if (widget.validator != null) {
                widget.validator!(value);
              }
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
