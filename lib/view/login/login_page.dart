import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello this is Login Page"),
        
      ),
      body: Column(
        children: [
          Text("Hello")
        ],
      ),
    );
  }
}
