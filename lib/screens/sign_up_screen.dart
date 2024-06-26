import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helper/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  static bool isHintVisible = false;
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  final TextEditingController nameTEController = TextEditingController();
  final TextEditingController userNameTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 248, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(242, 248, 252, 1),
        centerTitle: true,
        toolbarHeight: 300,
        automaticallyImplyLeading: true,
        leadingWidth: deviceWidth * 0.2,
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(29, 92, 44, 1),
        ),
        title: SizedBox(
          height: deviceHeight * 0.5,
          width: deviceWidth * 0.5,
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            height: deviceHeight * .5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: SingleChildScrollView(
          child: Column(
            children: [
              textFormField(
                'Name',
                nameTEController,
              ),
              const SizedBox(
                height: 16,
              ),
              textFormField(
                'Username',
                userNameTEController,
              ),
              const SizedBox(
                height: 16,
              ),
              textFormField(
                'Email',
                emailTEController,
              ),
              const SizedBox(
                height: 16,
              ),
              textFormField(
                'Password',
                passwordTEController,
              ),
              const SizedBox(
                height: 70,
              ),
              CustomButton(
                backgroundColor: const Color.fromRGBO(117, 231, 182, 1),
                foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                deviceHeight: deviceHeight * 0.075,
                deviceWidth: deviceWidth * 0.7,
                label: 'Signup',
                onPressed: () {},
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  TextFormField textFormField(String name, controller) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: textFieldDecoration(name, isHintVisible),
      onChanged: (controller) {
        isHintVisible = controller.isEmpty;
      },
      validator: (String? value) {
        if (value?.trim().isEmpty ?? true) {
          return 'Enter $name';
        } else {
          return null;
        }
      },
    );
  }

  InputDecoration textFieldDecoration(String name, bool isHintVisible) {
    return InputDecoration(
      border: const UnderlineInputBorder(),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      hintText: isHintVisible ? name : '',
      hintStyle: const TextStyle(color: Color.fromARGB(255, 27, 29, 27)),
      labelText: name,
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}
