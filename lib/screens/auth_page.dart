import 'package:doctor_app/components/login_form.dart';
import 'package:doctor_app/utils/config.dart';
import 'package:doctor_app/utils/text.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AppText.enText['welcome_text']!,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              Config.smallSpacing,
              Text(
                AppText.enText['signIn_text']!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Config.smallSpacing,
              // login components
              LoginForm(),
              Config.smallSpacing,
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppText.enText['forgot-password']!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Text(
                  AppText.enText['social-login']!,
                  style: TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade500
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
