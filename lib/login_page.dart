// ignore: duplicate_ignore
// ignore_for_file: deprecated_member_use, non_constant_identifier_names, duplicate_ignore

import 'package:firebase_flutter/first_screen.dart';
import 'package:flutter/material.dart'; 

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
 
 @override
 _LoginPageState createState() => _LoginPageState(); 
} 
class _LoginPageState extends State<LoginPage> { 
 @override
 Widget build(BuildContext context) { 
 return Scaffold( 
 body: Container( 
 color: Colors.white, 
 child: Center( 
 child: Column( 
 mainAxisSize: MainAxisSize.max, 
 mainAxisAlignment: MainAxisAlignment.center, 
 children: <Widget>[ 
 const FlutterLogo(size: 150), 
 const SizedBox(height: 50), 
 _signInButton(), 
 ], 
 ), 
 ), 
 ), 
 ); 
 } 
 Widget _signInButton() { 
 return OutlineButton( 
 splashColor: Colors.grey, 
 onPressed: () { 
 signInWithGoogle().then((result) { 
 if (result != null) { 
 Navigator.of(context).push( 
 MaterialPageRoute( 
 builder: (context) { 
 return const FirstScreen(); 
 }, 
 ), 
 ); 
 } 
 }); 
 }, 
 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)), 
 highlightElevation: 0, 
 borderSide: const BorderSide(color: Colors.grey), 
 child: Padding( 
 padding: const EdgeInsets.fromLTRB(0, 10, 0, 10), 
 child: Row( 
 mainAxisSize: MainAxisSize.min, 
 mainAxisAlignment: MainAxisAlignment.center, 
 // ignore: prefer_const_literals_to_create_immutables
 children: <Widget>[ 
 const Image(image: AssetImage("assets/google_logo.png"), height: 35.0), 
 const Padding( 
 padding: EdgeInsets.only(left: 10), 
 child: Text( 
 'Sign in with Google', 
 style: TextStyle( 
 fontSize: 20, 
 color: Colors.grey, 
 ), 
 ), 
 ) 
 ], 
 ), 
 ), 
 ); 
 }

  signInWithGoogle() {}



  // ignore: non_constant_identifier_names
}