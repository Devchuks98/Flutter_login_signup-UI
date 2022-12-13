import 'package:flutter/material.dart';
import 'package:project3/screens/getStarted.dart';
import 'package:project3/screens/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The title of this App
  final String _title = 'FirstMonie';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStarted(),
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstMobile App'),
        centerTitle: true,
      ),
      body: const FirstMobile(),
    );
  }
}
