// Copyright (c) 2019 Souvik Biswas
import 'package:firebase_flutter/login_page.dart';
import 'package:firebase_flutter/sign_in.dart';
import 'package:flutter/material.dart'; 

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  String? get imageUrl => null;

  String? get name => null;
 
 @override
 Widget build(BuildContext context) { 
 var container = Container( 
 decoration: const BoxDecoration( 
 gradient: LinearGradient( 
 begin: Alignment.topRight, 
 end: Alignment.bottomLeft, 
 colors: [Colors.blue, Colors.blue, 
 ]), 
 ), 
 child: Center( 
 child: Column( 
 mainAxisAlignment: MainAxisAlignment.center, 
 mainAxisSize: MainAxisSize.max, 
 children: <Widget>[ 
 CircleAvatar( 
 backgroundImage: NetworkImage( 
 imageUrl!, 
 ), 
 radius: 60, 
 backgroundColor: Colors.transparent, 
 ), 
 const SizedBox(height: 40), 
 const Text( 
 'NAME', 
 style: TextStyle( 
 fontSize: 15, 
 fontWeight: FontWeight.bold, 
 color: Colors.black54), 
 ), 
 Text( 
 name!, 
 style: const TextStyle( 
 fontSize: 25, 
 color: Colors.deepPurple, 
 fontWeight: FontWeight.bold), 
 ), 
 const SizedBox(height: 20), 
 const Text( 
 'EMAIL', 
 style: TextStyle( 
 fontSize: 15, 
 fontWeight: FontWeight.bold, 
 color: Colors.black54), 
 ), 
 Text( 
 email, 
 style: const TextStyle( 
 fontSize: 25, 
 color: Colors.deepPurple, 
 fontWeight: FontWeight.bold), 
 ), 
 const SizedBox(height: 40), 
 // ignore: deprecated_member_use
 RaisedButton( 
 onPressed: () { 
 signOutGoogle(); 
 
Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) 
{return const LoginPage();}), ModalRoute.withName('/')); 
 }, 
 color: Colors.deepPurple, 
 child: const Padding( 
 padding: EdgeInsets.all(8.0), 
 child: Text( 
 'Sign Out', 
 style: TextStyle(fontSize: 25, color: Colors.white), 
 ), 
 ), 
 elevation: 5, 
 shape: RoundedRectangleBorder( 
 borderRadius: BorderRadius.circular(40)), 
 ) 
 ], 
 ), 
 ), 
 );
 return Scaffold( 
 body: container, 
 ); 
 } 
} 