// ignore_for_file: deprecated_member_use

import 'package:firebase_flutter/first_screen.dart';
import 'package:firebase_flutter/sign_in.dart';
import 'package:flutter/material.dart'; 

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget { 
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
 // ignore: unnecessary_null_comparison
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
 children: const <Widget>[ 
 Image(image: AssetImage("assets/google_logo.png"), height: 35.0), 
 Padding( 
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
} 