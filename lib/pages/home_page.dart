import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {
            // AuthService.boilerplate().logout();
            // Navigator.pushReplacementNamed(context, Routes.signin);
          }, icon: const Icon(Icons.login))
        ],
      ),
      body: const Center(
        child: Text('Welcome.')
      )
    );
  }
}
