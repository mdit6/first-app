import 'package:flutter/material.dart';
import '../design/design.dart';

class registr extends StatefulWidget {
  const registr({Key? key}) : super(key: key);

  @override
  _registrState createState() => _registrState();
}

class _registrState extends State<registr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('انشاء حساب'),
        centerTitle: true,
         backgroundColor: bgColor,
       ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child: Image.asset("images/me.jpg"),
            ),
            SizedBox(height: 50),
            inputUser(title:'Enter Your Email'),
            inputPass(title:'Enter Your Password'),
            inputPass(title:'Again Your Password'),
            myButton(color: bgColor,title: 'Registr',onPressed: (){}),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}