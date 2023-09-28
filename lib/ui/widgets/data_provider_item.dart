import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';

class DataProviderItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isSelected;
  const DataProviderItem(
      {super.key,
      required this.imageUrl,
      required this.name,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: isSelected ? Border.all(color: blueColor, width: 2) : null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imageUrl, height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  )),
              Text('Available', style: greyTextStyle.copyWith(fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}
