import 'package:demo/features/app/splash_screen/splash_screen.dart';
import 'package:demo/features/user_auth/presentation/pages/homepage.dart';
import 'package:demo/features/user_auth/presentation/pages/login_page.dart';
import 'package:demo/features/user_auth/presentation/pages/signup_page.dart';
import 'package:demo/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/home": (context) => home(),
          "/login": (context) => LoginPage(),
          "/signup": (context) => SignupPage()
          
        },
        debugShowCheckedModeBanner: false,
        title: 'Testing App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(
          child: LoginPage(),
        ));
  }
}
