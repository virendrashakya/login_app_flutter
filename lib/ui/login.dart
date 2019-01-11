import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _welcomeText = "";

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _login() {
    setState(() {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
        _welcomeText = _userController.text;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              "images/user.png",
              height: 120.00,
              width: 120.00,
              color: Colors.lightGreen,
            ),
            new Container(
              height: 180.00,
              width: 380.00,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: "password",
                      icon: new Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  new Padding(padding: EdgeInsets.all(10.6)),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(
                              onPressed: _login,
                              color: Colors.redAccent,
                              child: new Text("Login", style: new TextStyle(color: Colors.white, fontSize: 17.00),),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 120.0),
                          child: new RaisedButton(
                            onPressed: _erase,
                            color: Colors.redAccent,
                            child: new Text("Clear", style: new TextStyle(color: Colors.white, fontSize: 17.00),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Padding(padding: EdgeInsets.all(14.00)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                    "Welcome $_welcomeText",
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 20.00,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
