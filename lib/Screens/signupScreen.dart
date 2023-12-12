import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 10),
                child: TextFormField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        hintText: "Name ",
                        filled: true,
                        // fillColor: ,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.all(15)),
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "Type your name";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 10),
                child: TextFormField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: "Email",
                        filled: true,
                        // fillColor: ,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: const EdgeInsets.all(15)),
                    validator: (email) {
                      if (email!.isEmpty) {
                        return "Type your email";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 10),
                child: TextFormField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: "Password",
                        filled: true,
                        // fillColor: ,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        contentPadding: EdgeInsets.all(15)),
                    validator: (password) {
                      if (password!.isEmpty) {
                        return "Type Your Password";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 10),
                child: Align(
                  alignment: Alignment.center,
                  child: ButtonTheme(
                      // minWidth: 300,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () => {},
                        child: const Text("Signup"),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
