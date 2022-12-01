import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:boilerplate/pages/pages.dart';
import 'package:boilerplate/routes/routes.dart';
import 'package:boilerplate/services/auth/auth_service.dart';
import 'package:boilerplate/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();

  await InAppPreferences().initPrefs();

  runApp(MultiProvider(providers: [
    // ChangeNotifierProvider<AuthService>(create: (_) => AuthService.boilerplate()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boilerplate Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.get(),
      // initialRoute: Routes.lobby,
      initialRoute: Routes.home,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: ((context) => const NotFoundPage()));
      },
    );
  }
}
