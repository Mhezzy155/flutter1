import 'package:doctor_app/main_layout.dart';
import 'package:doctor_app/screens/auth_page.dart';
import 'package:doctor_app/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // define theme
    return MaterialApp(
      navigatorKey: navigatorKey ,
      title: 'yea',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,

        // pre-define input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),

        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed
        ),
        
      ),

      // initial route of the app
      initialRoute: '/',
      routes: {
        '/' : (context) => const AuthPage(),
        // main layout after login
        'main': (context) => const MainLayout(),
      },
    );
  }
}
