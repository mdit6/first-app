import 'package:example/screens/counter.dart';
import 'package:flutter/material.dart';
import '../screens/registr.dart';
import '../screens/login.dart';
import '../screens/home.dart';
import '../screens/welcome.dart';
import '../screens/quiz.dart';

// colors
final Color bgColor = Color(0xFF009F7F);

// tools
class inputUser extends StatelessWidget {
  inputUser({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlign: TextAlign.center,
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: title,
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class inputPass extends StatelessWidget {
  inputPass({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: true,
        textAlign: TextAlign.center,
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: title,
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class myButton extends StatelessWidget {
  myButton({required this.color, required this.title, required this.onPressed});
  final Color color;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        elevation: 5,
        color: color,
        // color: Color(0xFF0B606C),
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          onPressed: () => onPressed,
          minWidth: 200,
          height: 42,
          child: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

// fun
class listTileFun extends StatelessWidget {
  const listTileFun(
      {required this.title, required this.icon, required this.push});
  final String title;
  final Icon icon;
  final Widget push;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: ListTile(
          title: Center(child: Text(title)),
          tileColor: Color(0xFF6B6D6B),
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: icon,
          onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => push),
              )),
    );
  }
}

Drawer Menu() {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      children: [
        DrawerHeader(child: Text('Header')),
        listTileFun(
            title: "الرئيسية", icon: Icon(Icons.home), push: homeScreen()),
        listTileFun(
            title: "تسجيل الدخول", icon: Icon(Icons.login), push: sinScreen()),
        listTileFun(
            title: "انشاء حساب", icon: Icon(Icons.create), push: registr()),
        listTileFun(
            title: "تسجيل خروج",
            icon: Icon(Icons.logout),
            push: WelcomeScreen()),
        listTileFun(
            title: "الحاسبة",
            icon: Icon(Icons.calculate),
            push: counterScreen()),
        listTileFun(
            title: "quiz",
            icon: Icon(Icons.calculate),
            push: example()),
      ],
    ),
  );
}

