import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final bool isVerified;
  const TransferRecentUserItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Row(
        children: [
          Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(right: 14),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl)),
                  shape: BoxShape.circle)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: medium,
                  )),
              const SizedBox(height: 2),
              Text('@$username', style: greyTextStyle.copyWith(fontSize: 12))
            ],
          ),
          const Spacer(),
          if (isVerified)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 14,
                  color: greenColor,
                ),
                const SizedBox(width: 4),
                Text('Verified',
                    style: greenTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: medium,
                    ))
              ],
            )
        ],
      ),
    );
  }
}
