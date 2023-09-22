import 'package:flutter/material.dart';
import '../design/design.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        title: Text('first app'),
        backgroundColor: bgColor,
      ),
      endDrawer: Menu(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  projectCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class projectCard extends StatelessWidget {
  const projectCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 190,
      // color: bgColor,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            // height: 166,
            // color: Colors.,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 15,
                  color: Colors.black38,
                )
              ],
            ),
          ),
          Positioned(
              top: 30,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 160,
                width: 200,
                child: Image.asset(
                  "images/me.jpg",
                  fit: BoxFit.cover,
                ),
              )),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                
                height: 136,
                width:size.width-200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text("التطبيق الاول"),
                    ),
                    Spacer(),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text("مهند محمد قاسم امين"),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                        // child: Text('price: 2000\$'),
                        
                      ),
                    )

                  ],
                ),
              ))
        ],
      ),
    );
  }
}
