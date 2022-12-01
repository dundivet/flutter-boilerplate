import 'package:boilerplate/pages/pages.dart';
import 'package:boilerplate/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.boilerplate().isAuthenticated(),
      builder: (context, snapshot) {

        if (snapshot.connectionState == ConnectionState.done) {
          Future.microtask(() {
            Navigator.pushReplacement(context, PageRouteBuilder(
              pageBuilder: (context, animation, secondAnimation) {
                // return snapshot.hasData ? const HomePage() : const SignInPage();
                return snapshot.hasData ? const HomePage() : const HomePage();
              },
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              transitionDuration: const Duration(microseconds: 0),
            ));
          });
        }

        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator()
          ),
        );
      },
    );
  }
}