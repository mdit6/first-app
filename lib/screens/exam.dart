import "package:flutter/material.dart";
import '../design/design.dart';
class example extends StatefulWidget {
  const example({ Key? key }) : super(key: key);

  @override
  _exampleState createState() => _exampleState();
}

class _exampleState extends State<example> {
  TextEditingController txt = new TextEditingController();
  String output='0';
  String p='';
getNum(String n){
  if(output=='0'){
    output='';
  }
  output=output+n;
  if(n=='C'){
    output='0';
  }
   setState(() {
      output;
    });
}



btnBress(String y){
  String val=output;
  int num=0;
  if(y=='المعكوس'){
    num=-int.parse(output);
    output=num.toString();
  }
  if(y=='المضروب'){
    num=int.parse(output);
    int sum=1;
    for(int i=1;i<num;i++){
      sum+=sum*i;
    }
    output=sum.toString();
  }
   setState(() {
      output;
    });
}

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
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
          Column(children: [
            Row(children: [
              btnPr2('1'),
              btnPr2('2'),
              btnPr2('3'),
            ],),
            Row(children: [
              btnPr2('4'),
              btnPr2('5'),
              btnPr2('6'),
            ],),
            Row(children: [
              btnPr2('7'),
              btnPr2('8'),
              btnPr2('9'),
            ],),
            Row(children: [
              btnPr2('0'),
              btnPr2('C'),
            ],),
            Row(children: [
              Divider(),
              btnPr('المعكوس'),
              btnPr('المضروب'),
            ],)
          ],)
        ],
      ));
  }

  Container btnPr(String y) {
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
            y,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          onPressed: () {
            btnBress(y);
          },
        ),
      ),
    ),
  );
  }
  Container btnPr2(String n) {
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
            n,
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          onPressed: () {
            getNum(n);
          },
        ),
      ),
    ),
  );
  }
}