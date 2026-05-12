import 'package:doctor_app/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key, 
    required this.social
  });

  final String social;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (){}, 
      child: SizedBox(
        width: Config.screenWidth !* 0.04,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/$social.png',
              width: 40,
              height: 40,
            ),
            
          ],
        ),
      )
    );
  }
}
