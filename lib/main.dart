import 'package:flutter/material.dart';
import 'package:messenging_room/pages/chat_page.dart';
import 'package:messenging_room/pages/home_page.dart';
import 'package:messenging_room/pages/login_page.dart';
import 'package:messenging_room/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
        '/chat': (context) => const ChatPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Messaging Room',
      home: const LoginPage(),
    );
  }
}
