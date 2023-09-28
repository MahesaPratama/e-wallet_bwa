import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/forms.dart';

import '../../shared/share.dart';
import '../widgets/button.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Pin'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(title: 'Old PIN'),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(title: 'New PIN'),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                    title: 'Update Now',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'profileeditsuccess', (route) => false);
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
