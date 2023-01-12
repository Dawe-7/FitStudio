import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants/colors.dart';
import '../routes/app.routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _secureText = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.account_circle,
                    color: Theme.of(context).colorScheme.primary,
                    size: 72,
                  ),
                ),
                Text("Create an account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? Colors.white
                          : darkTextColor,
                    )),
                Text("Enter your credentials to continue.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? Colors.white
                          : darkTextColor,
                      fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  enableSuggestions: true,
                  controller: emailController,
                  autofillHints: const [AutofillHints.email],
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? const Color(0xFF303135)
                          : textFieldColor,
                      hintText: "Email",
                      suffixIcon: const Icon(Icons.alternate_email_rounded),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      hintStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: _secureText,
                  enableSuggestions: true,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? Colors.white
                          : darkTextColor,
                      fontSize: 14),
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: const BorderSide(
                            color: Colors.transparent, width: 0.0),
                      ),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.brightness ==
                              Brightness.dark
                          ? const Color(0xFF303135)
                          : textFieldColor,
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                        icon: Icon(_secureText
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      hintStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      String email = emailController.text.trim();
                      String password = passwordController.text.trim();
                      if (email.isEmpty || password.isEmpty) {
                        var message = "Fill all your credentials to continue!";
                        Fluttertoast.showToast(msg: message);
                      } else {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRoutes.HomeRoute, (route) => false);
                      }
                    },
                    child: const Text("Create account"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.LoginRoute, (route) => false);
                  },
                  child: Wrap(
                    children: [
                      Text(
                        "Have account? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                      ),
                      Text(
                        "Sign in",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
