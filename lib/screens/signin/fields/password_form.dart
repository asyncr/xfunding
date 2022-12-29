import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PassworFieldForm extends StatefulWidget {
  PassworFieldForm({
    Key? key,
    required this.fillIcon,
    required this.nameLabel,
    required this.isObscureText,
  }) : super(key: key);

  String nameLabel;
  IconData fillIcon;
  bool isObscureText;

  @override
  State<PassworFieldForm> createState() => _PassworFieldFormState();
}

class _PassworFieldFormState extends State<PassworFieldForm> {
  @override
  void initState() {
    super.initState();
    widget.isObscureText = widget.isObscureText;
    print(widget.isObscureText);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        label: Text(widget.nameLabel),
        labelStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(widget.fillIcon, color: Colors.grey),
        // /*

        suffixIcon: GestureDetector(
          onTap: () => {
            widget.isObscureText = !widget.isObscureText,
          },
          child: Icon(
            widget.isObscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        ),

        // */
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
        ),
      ),
      obscureText: widget.isObscureText,
    );
  }
}
