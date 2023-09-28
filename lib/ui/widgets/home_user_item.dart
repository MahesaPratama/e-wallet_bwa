import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';

class HomeUseritem extends StatelessWidget {
  final String imageUrl;
  final String userName;
  const HomeUseritem(
      {super.key, required this.imageUrl, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      height: 120,
      width: 90,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.cover)),
          ),
          Text('@$userName',
              style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium))
        ],
      ),
    );
  }
}
