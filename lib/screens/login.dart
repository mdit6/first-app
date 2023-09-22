import 'package:flutter/material.dart';
import '../design/design.dart';
class sinScreen extends StatefulWidget {
  const sinScreen({ Key? key }) : super(key: key);

  @override
  _sinScreenState createState() => _sinScreenState();
}

class _sinScreenState extends State<sinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
         title: Text('تسجيل الدخول'),
         centerTitle: true,
         backgroundColor: bgColor,
       ),
        body:Padding(
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
              inputUser(title: 'Enter Your Username'),
              inputPass(title: 'Enter Your Password'),
              myButton(color: bgColor,title: 'Log in',onPressed: (){}),
              SizedBox(height: 10),
          ]),
      
    ),
    );
    }
}