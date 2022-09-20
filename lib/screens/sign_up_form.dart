import 'package:doctor_app_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../constant.dart';

// import '../../../constants.dart';

// class SignUpForm extends StatelessWidget {
//   SignUpForm({
//     Key? key,
//     required this.formKey,
//   }) : super(key: key);
//
//   final GlobalKey formKey;
//   // String _userName, _email, _password, _phoneNumber;
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // We will fixed the error soon
//           // As you can see, it's a email field
//           // But no @ on keybord
//           TextFieldName(text: "Email"),
//           TextFormField(
//             controller: emailController,
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(hintText: "test@email.com"),
//           ),
//           const SizedBox(height: defaultPadding),
//           TextFieldName(text: "Phone"),
//           // Same for phone number
//           TextFormField(
//             keyboardType: TextInputType.phone,
//             decoration: InputDecoration(hintText: "+123487697"),
//             validator: RequiredValidator(errorText: "Phone number is required"),),
//           const SizedBox(height: defaultPadding),
//           TextFieldName(text: "Password"),
//
//           TextFormField(
//             controller: passwordController,
//             // We want to hide our password
//             obscureText: true,
//             decoration: InputDecoration(hintText: "******"),
//           ),
//           const SizedBox(height: defaultPadding),
//           TextFieldName(text: "Confirm Password"),
//           TextFormField(
//             obscureText: true,
//             decoration: InputDecoration(hintText: "*****"),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TextFieldName extends StatelessWidget {
//   const TextFieldName({
//     Key? key,
//     required this.text,
//   }) : super(key: key);
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: defaultPadding / 3),
//       child: Text(
//         text,
//         style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
//       ),
//     );
//   }
// }
