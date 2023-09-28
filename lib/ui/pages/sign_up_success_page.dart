import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';

class SignUpSuccesUp extends StatelessWidget {
  const SignUpSuccesUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil\nTerdaftar',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 26),
            Text(
              'Grow your finance start\ntogether with us',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomFilledButton(
                title: 'Get Started',
                width: 183,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'homepage', (route) => false);
                })
          ],
        ),
      ),
    );
  }
}
