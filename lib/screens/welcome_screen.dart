import 'package:edu_connect/helper/custom_button.dart';
import 'package:edu_connect/screens/login_screen.dart';
import 'package:edu_connect/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 248, 252, 1),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceHeight * .06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: deviceHeight * 0.2,
                  width: deviceWidth * 0.4,
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: deviceHeight * 0.3,
                  width: deviceWidth * 0.78,
                  child: Image.asset(
                    'assets/images/home_screen.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * .03,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: deviceHeight * .05,
            ),
            CustomButton(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromRGBO(65, 64, 66, 1),
              deviceHeight: deviceHeight * 0.075,
              deviceWidth: deviceWidth * 0.78,
              label: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: deviceHeight * .03,
            ),
            CustomButton(
              backgroundColor: const Color.fromRGBO(117, 231, 182, 1),
              foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
              deviceHeight: deviceHeight * 0.075,
              deviceWidth: deviceWidth * 0.78,
              label: 'Signup',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
