// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../shared/share.dart';
import '../widgets/button.dart';

class SignUpSetKtp extends StatelessWidget {
  const SignUpSetKtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_logo_light.png'))),
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: lightBackgroundColor),
                  child: Center(
                    child: Image.asset('assets/ic_upload.png', width: 32),
                  ),
                ),
                const SizedBox(height: 16),
                Text('Passport/ID Card',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium)),
                const SizedBox(
                  height: 50,
                ),
                const CustomFilledButton(title: 'Continue', onPressed: null)
              ],
            ),
          ),
          const SizedBox(height: 60),
          CustomTextButton(
            title: 'Skip for Now',
            onPressed: () {
              Navigator.pushNamed(context, 'signupsuccess');
            },
          )
        ],
      ),
    );
  }
}
