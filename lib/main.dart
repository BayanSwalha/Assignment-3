import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(50, 200, 50, 50),
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    shadowColor: Colors.greenAccent,
                    elevation: 20,
                    primary: Colors.blueGrey,
                    onPrimary: Colors.black,
                    onSurface: Colors.blueAccent,
                  ),
                  onPressed: () {
                    print("Hello from elevated button");
                  },
                  child: Text(
                    "First Button",
                    style: TextStyle(color: Colors.white),
                  )),
              RaisedButton(
                  padding: EdgeInsets.all(20),
                  textColor: Colors.white,
                  color: Colors.blueGrey,
                  elevation: 10,
                  onLongPress: null,
                  child: Text("Second Button"),
                  onPressed: () {
                    print("Hello from raised button");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
