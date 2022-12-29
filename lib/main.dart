import 'package:chat_app/screens/auth_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (ctx, snap) {
        if (snap.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        return MaterialApp(
          title: 'FlutterChat',
          theme: ThemeData(

              primaryColor: Colors.pink,
              backgroundColor: Colors.pink,

              colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: Colors.purple,
              )),
          home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (ctx,userSnapshot) {
              if(userSnapshot.connectionState==ConnectionState.waiting){
                return SplashScreen();
              }
              if (userSnapshot.hasData){
                return ChatScreen();
              }
              return AuthScreen();

            }
          ),
        );
      },
    );
  }
}
