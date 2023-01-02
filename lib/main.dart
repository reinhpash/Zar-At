import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int bottom = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFF3E0FB), Color(0xFFE0AEF5)])),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Scaffold(
          appBar: getAppbar(),
          backgroundColor: Colors.red,
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/bg.png'),
              fit: BoxFit.cover)
            ),
            child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image(
                      image: AssetImage('images/$top.png'),
                      height: 200,
                      width: 390,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          top = Random().nextInt(6) + 1;
                          bottom = Random().nextInt(6) + 1;
                        });
                      },
                      child: Text(
                        'Salla',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: Size(200.0, 40.0),
                        shape: StadiumBorder(),
                      ),
                    ),
                    Image(
                      image: AssetImage('images/$bottom.png'),
                      height: 200,
                      width: 390,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget getAppbar() {
  return AppBar(
    centerTitle: true,
    // elevation: 0,
    shadowColor: Color(0xFFFFFFFF),
    backgroundColor: Color(0xFF000000),
    title: Text('Zar At'),
  );
}

