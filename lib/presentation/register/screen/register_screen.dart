import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn_one/core/custom/custom_button.dart';
import 'package:flutter_learn_one/core/custom/custom_logo.dart';
import 'package:flutter_learn_one/core/custom/custom_textfield.dart';
import 'package:flutter_learn_one/presentation/login/screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: customLogo(
                      animate: false, height: 150, repeat: false, width: 180),
                ),
                SizedBox(
                  height: size.height * 0.14,
                ),
                Text(
                  'Sign up Now',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.red.shade300,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 13),
                const CustomTextFormField(
                    hintText: 'Full Name',
                    prefixIconData: Icons.person_2_outlined),
                const SizedBox(height: 15),
                const CustomTextFormField(
                    hintText: 'Email Address',
                    prefixIconData: Icons.email_outlined),
                const SizedBox(height: 15),
                const CustomTextFormField(
                    hintText: 'Password',
                    prefixIconData: Icons.lock_outline,
                    suffixIconData: Icons.remove_red_eye_outlined),
                const SizedBox(height: 15),
                const SizedBox(height: 25),
                customButton(onPressed: () {}, text: 'Login'),
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          children: [
                        const TextSpan(text: 'Already have an account ? '),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const LoginScreen()));
                              },
                            text: 'Login',
                            style: TextStyle(color: Colors.red.shade300)),
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
