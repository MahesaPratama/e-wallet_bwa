import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 26),
            Text(
              'Your data is safe with\nour system',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomFilledButton(
                title: 'My Profile',
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
