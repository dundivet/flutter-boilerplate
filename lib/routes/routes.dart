import 'package:flutter/material.dart';

import 'package:boilerplate/pages/pages.dart';

class Routes {
  static const home       = 'home';
  static const lobby      = 'lobby';
  
  static Map<String, WidgetBuilder> get() {
    return <String, WidgetBuilder> {
      Routes.home      : (context) => const HomePage(),
      Routes.lobby     : (context) => const LobbyPage(),
    };
  }
}
