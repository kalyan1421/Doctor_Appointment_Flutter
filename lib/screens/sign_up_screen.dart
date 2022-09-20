import 'package:doctor_app_app/auth_controller.dart';
import 'package:doctor_app_app/constant.dart';
import 'sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  var  emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            height: MediaQuery.of(context).size.height,
            // Now it takes 100% of our height
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
            Row(
              children: [
                TextFieldName(text: "Username"),
                TextFormField(
                  decoration: InputDecoration(hintText: "Username"),),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Email"),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "test@email.com"),
                ),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Phone"),
                          // Same for phone number
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: "+123487697"),
                  validator: RequiredValidator(errorText: "Phone number is required"),),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Password"),

                TextFormField(
                  controller: passwordController,
                            // We want to hide our password
                  obscureText: true,
                  decoration: InputDecoration(hintText: "******"),
                ),
                const SizedBox(height: defaultPadding),
                TextFieldName(text: "Confirm Password"),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "*****"),
                ),
                Text("Already have an account?"),
                TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> SignInScreen(),
                      )
                  ),
                  child: Text(
                    "Sign In!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ), const SizedBox(height: defaultPadding * 2),
                    const SizedBox(height: defaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                        },
                        child: Text("Sign In"),
                            ),
                    ),
                ],
                ),
              ),
            ),
          ),
        ],

      ),

    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}