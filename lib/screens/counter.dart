import 'package:flutter/material.dart';
import '../design/design.dart';

class counterScreen extends StatefulWidget {
  const counterScreen({Key? key}) : super(key: key);

  @override
  _counterScreenState createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  String output = '0';
  String result = '0';
  int num1 = 0;
  int num2 = 0;
  String process = '';
  btnpress(String btnText) {
    if (btnText == 'C') {
      output = '0';
      result = '0';
      num1 = 0;
      num2 = 0;
      process = '';
    }
    else if (btnText == '+' ||
        btnText == '-' ||
        btnText == '*' ||
        btnText == '/'||
        btnText == '%') {
      num1 = int.parse(output);
      process = btnText;
      result = '0';
    }else if(btnText=='x'){
      if(result.length==0){
        result='0';
      }else{
        String k="";
      for(int i=0;i<(result.length)-1;i++){
        k+=result[i];
        
      }
      result=k;
      }
    } else if (btnText == '=') {
      num2 = int.parse(output);
      if (process == '+') {
        result = (num1 + num2).toString();
      } else if (process == '*') {
        result = (num1 * num2).toString();
      } else if (process == '%') {
        result = (num1 % num2).toString();
      } else if (process == '/') {
        result = (num1 / num2).toString();
      } else if (process == '-') {
        result = (num1 - num2).toString();
      }
      num1 = 0;
      num2 = 0;
      process = '';
    } else {
      result = result + btnText;
    }
    setState(() {
      output = int.parse(result).toString();
    });
  }

  //

  Widget btnN(String tx) {
    return Container(
      child: Expanded(
        child: Container(
          color: Colors.blue,
          // color: Color(0xFF2D302F),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                // color: Colors.cyan,
                color: Color(0xFFFFFFFF),
                width: 2,
              ),
              padding: const EdgeInsets.all(24),
            ),
            child: Text(
              tx,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onPressed: () {
              btnpress(tx);
            },
          ),
        ),
      ),
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(13, 98, 138, 1),
                width: 3,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 12,
            ),
            child: Text(output),
          ),
          Divider(),
          Column(
            children: <Widget>[
              Row(
                children: [
                   btnN('C'),
                   btnN('%'),
                   btnN('/'),
                ],
              ),
              Row(
                children: [
                  btnN('7'),
                  btnN('8'),
                  btnN('9'),
                  btnN('*'),
                ],
              ),
              Row(
                children: [
                  btnN('4'),
                  btnN('5'),
                  btnN('6'),
                  btnN('-'),
                ],
              ),
              Row(
                children: [
                  btnN('1'),
                  btnN('2'),
                  btnN('3'),
                  btnN('+'),
                ],
              ),
              Row(
                children: [
                  btnN('.'),
                  btnN('0'),
                  btnN('x'),
                ],
              ),
              Row(
                children: [
                  btnN('='),
                ],
              ),
            ],
          )
        ],
      ),
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle:true,
      ),
    );
  }
}
