import 'package:flutter/material.dart';
import 'package:flutter_first_app/multi_app_screens/app_interface.dart';
import 'package:flutter_first_app/screen_navigator/routes.dart';

class login_screen extends StatefulWidget {
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToAppInterface(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            key: Key(app_interface().toString()),
            child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/hey_image.png",
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Welcome $name",
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 32.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Enter Username",
                                      labelText: "Username",
                                    ),
                                    validator: (String? value) {
                                      if (value != null && value.isEmpty) {
                                        return "Username can't be empty";
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      name = value;
                                      setState(() {});
                                    },
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      hintText: "Enter password",
                                      labelText: "Password",
                                    ),
                                    validator: (String? value) {
                                      if (value != null && value.isEmpty) {
                                        return "Username can't be empty";
                                      } else if (value != null &&
                                          value.length < 6) {
                                        return "password should have atleast 6";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Material(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(
                                        changeButton ? 50 : 8),
                                    child: InkWell(
                                      onTap: () => moveToAppInterface(context),
                                      child: AnimatedContainer(
                                        duration: Duration(seconds: 1),
                                        width: changeButton ? 50 : 100,
                                        height: 50,
                                        //color: Colors.deepPurple,
                                        alignment: Alignment.center,
                                        child: changeButton
                                            ? const Icon(
                                                Icons.done,
                                                color: Colors.white,
                                              )
                                            : const Text(
                                                "Login",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                      ),
                                    ),
                                  ),
                                  // ElevatedButton(
                                  //   child: const Text("Login"),
                                  //   style: TextButton.styleFrom(minimumSize: const Size(100, 45)),
                                  //   onPressed: () => moveToAppInterface(context)
                                  // )
                                ],
                              ),
                            )
                          ],
                        ))))));
  }
}
