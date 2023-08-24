import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_app/screens/chat_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

_initializeApp() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

void main() {
  runApp(const MyApp());
  _initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChatScreen());
  }
}
