import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTipsItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    final Uri urls = Uri.parse(url);
    return GestureDetector(
      onTap: () async {
        if (await launchUrl(urls)) {
          launchUrl(urls);
        } else {
          if (kDebugMode) {
            print('Url not found');
          }
        }
      },
      child: Container(
        height: 176,
        width: 155,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: whiteColor),
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imageUrl,
                  width: 155, height: 110, fit: BoxFit.cover)),
          const SizedBox(height: 12),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                    fontWeight: medium, overflow: TextOverflow.ellipsis),
                maxLines: 2,
              )),
        ]),
      ),
    );
  }
}
