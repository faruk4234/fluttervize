import 'package:first/homeroute.dart';
import 'package:flutter/material.dart';
import 'package:first/giriş/Register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'l0B39DloYA8',
    params: YoutubePlayerParams(
        playlist: ['l0B39DloYA8', 'l0B39DloYA8'], // Defining custom playlist
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
    ),
);

class _State extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen App'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
        
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () async {
                        print(emailController.text);
                        print(passwordController.text);
                        try {
                        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email:emailController.text,
                          password: passwordController.text
                        ).then((value) => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                          builder: (context) =>HomeRoute(),
                          settings: RouteSettings(
                          ),
                          )) );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('hesap oluştur'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Kaydol',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                             Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                          builder: (context) =>Register(),
                          settings: RouteSettings(
                          ),
                          ));
                          },
                          
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                    YoutubePlayerIFrame(
                        controller: _controller,
                        aspectRatio: 16 / 9,
                    ),
              ],
            )));
  }
}