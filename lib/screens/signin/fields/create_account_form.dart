import 'package:flutter/material.dart';
import 'package:xfunding/screens/signin/utils.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: Wrap(
          children: [
            Text(
              '$textAccount ',
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
            Text(
              textSignUp,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
