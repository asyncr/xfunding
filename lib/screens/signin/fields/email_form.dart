import 'package:flutter/material.dart';

class UserNameForm extends StatefulWidget {
  const UserNameForm({
    Key? key,
    required this.fillIcon,
    required this.nameLabel,
  }) : super(key: key);

  final String nameLabel;
  final IconData fillIcon;

  @override
  State<UserNameForm> createState() => _UserNameFormState();
}

class _UserNameFormState extends State<UserNameForm> {
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
        // prefixIcon:
        //     const Icon(Icons.supervised_user_circle, color: Colors.grey),
        prefixIcon: Icon(widget.fillIcon, color: Colors.grey),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white10),
        ),
      ),
    );
  }
}
