import 'package:flutter/material.dart';
import '../design/design.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  child: Image.asset("images/me.jpg"),
                ),
                Text(
                  "Mohanned",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: bgColor),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            myButton(
              color: Color(0xFF083153),
              title: 'تسجيل الدخول',
              onPressed: () {},
            ),
            myButton(
                color: bgColor, title: 'انشاء حساب', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
