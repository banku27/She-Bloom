import 'package:flutter/material.dart';
import 'package:she_bloom/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xffF56A79).withOpacity(0.7),
              Colors.white,
            ],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Enter you email',
                  suffixIcon: Icons.email_outlined,
                  controller: emailController,
                ),
                const SizedBox(height: 50),
                const Text(
                  "Or Log in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Username',
                  suffixIcon: Icons.person_outline,
                  controller: usernameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Password',
                  suffixIcon: Icons.lock_outline,
                  isPassword: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF56A79).withOpacity(0.6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                    ),
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

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData suffixIcon;
  final bool isPassword;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.suffixIcon,
    this.isPassword = false,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        suffixIcon: CircleAvatar(
          backgroundColor: const Color(0xffF56A79).withOpacity(0.6),
          child: Icon(
            suffixIcon,
            color: Colors.black,
          ),
        ),
      ),
      obscureText: isPassword,
      validator: validator,
    );
  }
}
