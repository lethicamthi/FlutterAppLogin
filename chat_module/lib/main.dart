import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset("assets/images/logo.png",width: 120,),
                  ),
                ),
                Text(
                  "Inu chat",
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
            Row(
              children: [
                CustomButton(
                  text: "Login",
                  callback: () {},
                ),
                CustomButton(
                  text: "Register",
                  callback: () {},
                )
              ],
            )
          ],
            ),
        );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  const CustomButton({Key key, this.callback, this.text}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: 6.0,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200.0,
          height: 45.0,
          child: Text(text),
        ),
      ),
    );
  }
}



 