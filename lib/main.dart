import 'package:click_coffee/screen/login.dart';
import 'package:flutter/material.dart';

import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Click Coffee',
        theme: ThemeData(
          colorScheme: const ColorScheme(
            primary: Color(0xFF3B3D77),
            primaryContainer: Color(0xFF3B3D77),
            secondary: Color(0xFF3B3D77),
            secondaryContainer: Color(0xFF3B3D77),
            surface: Colors.white,
            error: Colors.red,
            onPrimary: Colors.black,
            onSecondary: Colors.black,
            onSurface: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      )
    );
  }
}
