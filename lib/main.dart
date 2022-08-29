import 'package:flutter/material.dart';
import 'package:wiin/Auth/forgotPasswordScreen.dart';
import 'package:wiin/Auth/loginScreen.dart';
import 'package:wiin/Auth/signupScreen.dart';
import 'package:wiin/BottomNavBar/bottomNavBar.dart';
import 'package:wiin/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WiiN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/bottomnavbar',
      routes: {
        '/splash': (context) => const SplashScreen(),
        // '/home': (context) => const HomeScreen(),
        '/bottomnavbar': (context) => const BottomNavBar(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/forgotpassword': (context) => const ForgotPasswordScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
