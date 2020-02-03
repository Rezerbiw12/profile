import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoggedIn = false;

  void initiateFacebookLogin() async {
    var login = FacebookLogin();
    var result = await login.logIn(['email']);
    switch (result.status) {
      case FacebookLoginStatus.error:
        print('error');
        break;
      case FacebookLoginStatus.cancelledByUser:
        print('cancelledbyuser');
        break;
      case FacebookLoginStatus.loggedIn:
        onLoginStatusChange(true);
        getUserInfo(result);
        break;
    }
  }

  void onLoginStatusChange(bool isLoggedIn) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  void getUserInfo(FacebookLoginResult result)async{
final token = result.accessToken.token;
final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
final profile = json.decode(graphResponse.body);
print('userID:${profile['email']}');
setState(() {
  data = profile;
});
  }
  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: isLoggedIn
                  ? Text('${data['name']}',style:
                                TextStyle(color: Colors.black, fontSize: 20))
                  : RaisedButton(
                      child: Text('Login With Facebook'),
                      onPressed: () => initiateFacebookLogin(),
                    ))
        ],
      ),
      )
      
    );
  }
}
