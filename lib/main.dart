import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounterApp());
}

class BasketBallCounterApp extends StatefulWidget {
  const BasketBallCounterApp({super.key});

  @override
  State<BasketBallCounterApp> createState() => _BasketBallCounterAppState();
}

class _BasketBallCounterAppState extends State<BasketBallCounterApp> {
  int numofteamA=0;
  int numofteamB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Points counter',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange,
          toolbarHeight: 60,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$numofteamA',
                      style: TextStyle(fontSize: 160),
                    ),
                    Buttonwidget(
                      onTap: () {
                        numofteamA=numofteamA+1;
                        setState(() {
                          
                        });
                      },
                      text: 'Add 1 point',
                    ),
                    Buttonwidget(
                       onTap: () {
                        numofteamA=numofteamA+2;
                        setState(() {
                          
                        });
                      },
                      text: 'Add 2 points',
                    ),
                    Buttonwidget(
                       onTap: () {
                        numofteamA=numofteamA+3;
                        setState(() {
                          
                        });
                      },
                      
                      text: 'Add 3 points',
                    )
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 5,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      '$numofteamB',
                      style: TextStyle(fontSize: 160),
                    ),
                    Buttonwidget(
                      text: 'Add 1 point',
                      onTap: () {
                        numofteamB=numofteamB+1;
                        setState(() {
                          
                        });
                      },
                    ),
                    Buttonwidget(
                      onTap: () {
                        numofteamB=numofteamB+2;
                        setState(() {
                          
                        });
                      },
                      text: 'Add 2 points',
                    ),
                    Buttonwidget(
                      onTap: () {
                        numofteamB=numofteamB+3;
                        setState(() {
                          
                        });
                      },
                      text: 'Add 3 points',
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),

            Buttonwidget(text: 'Reset',onTap: () {
              
              numofteamA=0;
              numofteamB=0;
              setState(() {
                
              });
            },)
          ],
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Buttonwidget extends StatelessWidget {
  Buttonwidget({super.key, required this.text,required this.onTap});
  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 40,
        width: 100,
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        color: Colors.orange,
      ),
    );
  }
}
