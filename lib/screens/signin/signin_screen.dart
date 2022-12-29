import 'package:flutter/material.dart';
import 'package:xfunding/screens/signin/fields/email_form.dart';
import 'package:xfunding/screens/signin/fields/create_account_form.dart';
import 'package:xfunding/screens/signin/fields/password_form.dart';
import 'package:xfunding/screens/signin/utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    titleScreen,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 80),
                  Text(
                    textWelcome,
                    style: const TextStyle(
                      color: Colors.white60,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    textHelping,
                    style: const TextStyle(
                      color: Colors.white24,
                    ),
                  ),
                  const SizedBox(height: 80),
                  UserNameForm(
                    fillIcon: Icons.supervised_user_circle_outlined,
                    nameLabel: fieldUserName,
                  ),
                  const SizedBox(height: 20),
                  PassworFieldForm(
                    fillIcon: Icons.lock_outline,
                    nameLabel: fieldPassword,
                    isObscureText: true,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 0, top: 10, right: 0),
                      child: Text(
                        textForgot,
                        style: const TextStyle(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            // const Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(titleScreen),
              ),
            ),
            const CreateAccount()
          ],
        ),
      ),
    );
  }
}
