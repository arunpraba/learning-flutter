import 'package:fllearn/utils/routes.dart';
import 'package:fllearn/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isButtonChanged = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isButtonChanged = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      if (context.mounted) {
        await Navigator.pushNamed(context, AppRoutes.homeRoute);
        setState(() {
          isButtonChanged = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: <Widget>[
            // Image.asset(
            //   'assets/images/login_image.png',
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(
              height: 20,
            ),
            Text('Welcome $name',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                    validator: (String? value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 4) {
                          return "Password length should be atleast 6";
                        }
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              child: InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: isButtonChanged ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(isButtonChanged ? 50 : 4),
                    color: AppColors.appPrimaryColor,
                  ),
                  child: isButtonChanged
                      ? Icon(Icons.lock_open, color: Colors.white)
                      : Text(
                          "Login",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
