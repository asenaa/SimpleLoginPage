import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: CustomTile()),
      ),
    );
  }
}

class CustomTile extends StatefulWidget {
  @override
  CustomTileState createState() => CustomTileState();
}

class CustomTileState extends State<CustomTile> {
  Color color;
  var email = "ase";
  var password = "123";
  String text = "Sign in!";
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  void initState() {
    super.initState();

    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: emailController,
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
              ),
              RaisedButton(
                child: Text("Login"),
                onPressed: () {
                  setState(() {
                    if (emailController.text == email &&
                        passwordController.text == password) {
                      color = Colors.green;
                      text = "Succeed!";
                    } else {
                      color = Colors.red;
                      text = "Not Succeed!";
                    }
                  });
                },
              ),
              Text("$text"),
              new Container(
                height: 200,
                width: 200,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}