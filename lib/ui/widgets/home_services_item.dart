import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';

class HomeServicesitem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;
  const HomeServicesitem(
      {super.key, required this.iconUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Center(child: Image.asset(iconUrl, width: 26)),
          ),
          Text(title, style: blackTextStyle.copyWith(fontWeight: medium))
        ],
      ),
    );
  }
}
