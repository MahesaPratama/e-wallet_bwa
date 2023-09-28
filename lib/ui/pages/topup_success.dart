import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';

class TopUpSuccessPage extends StatelessWidget {
  const TopUpSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Top Up\nWallet Berhasil',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 26),
            Text(
              'Use the money wisely and\ngrow your finance',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            CustomFilledButton(
                title: 'Back to Home',
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
