// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';
import 'package:flutter_application_1/ui/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/img_profile.png'))),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: whiteColor, shape: BoxShape.circle),
                      child: const Center(
                        child: Icon(Icons.check_circle,
                            color: Colors.green, size: 24),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text('Shayna Hanna',
                    style: blackTextStyle.copyWith(
                        fontWeight: medium, fontSize: 18)),
                const SizedBox(height: 40),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_edit_profile.png',
                    title: 'Edit Profile',
                    onTap: () async {
                      if (await Navigator.pushNamed(context, 'pin') == true) {
                        Navigator.pushNamed(context, 'profileedit');
                      }
                    }),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_pin.png',
                    title: 'My Pin',
                    onTap: () async {
                      if (await Navigator.pushNamed(context, 'pin') == true) {
                        Navigator.pushNamed(context, 'profileeditpin');
                      }
                    }),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_wallet.png',
                    title: 'Wallet Settings',
                    onTap: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_reward.png',
                    title: 'My Rewards',
                    onTap: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_help.png',
                    title: 'Help Center',
                    onTap: () {}),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_logout.png',
                    title: 'Log Out',
                    onTap: () {}),
              ],
            ),
          ),
          const SizedBox(height: 87),
          CustomTextButton(title: 'Report a Problem', onPressed: () {}),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}
