import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:flutter_application_1/shared/shared_methods.dart';
import 'package:flutter_application_1/ui/widgets/home_latest_transaction_item.dart';
import 'package:flutter_application_1/ui/widgets/home_services_item.dart';
import 'package:flutter_application_1/ui/widgets/home_tips_item.dart';
import 'package:flutter_application_1/ui/widgets/home_user_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: whiteColor,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_overview.png',
                    color: blueColor,
                    width: 20,
                  ),
                  label: 'Overview'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_history.png',
                    width: 20,
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_statistic.png',
                    width: 20,
                  ),
                  label: 'Statistic'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_reward.png',
                    width: 20,
                  ),
                  label: 'Reward'),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFriendlyTips()
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Howdy', style: greyTextStyle.copyWith(fontSize: 16)),
              const SizedBox(
                height: 2,
              ),
              Text('shaynahan',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold))
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'profile');
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(color: whiteColor, shape: BoxShape.circle),
                  child: const Center(
                    child: Icon(Icons.check_circle, color: Colors.green),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: const DecorationImage(
              image: AssetImage('assets/img_bg_card.png'), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Shayna Hanna',
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium)),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 6),
          ),
          const SizedBox(height: 21),
          Text('Balance', style: whiteTextStyle),
          Text(formatCurrency(12500),
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold))
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Column(
        children: [
          Row(
            children: [
              Text('Level 1',
                  style: blackTextStyle.copyWith(fontWeight: medium)),
              const Spacer(),
              Text('55% ',
                  style: greenTextStyle.copyWith(fontWeight: semiBold)),
              Text('of ${formatCurrency(20000)}',
                  style: blackTextStyle.copyWith(fontWeight: semiBold)),
            ],
          ),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation(greenColor),
              minHeight: 5,
              backgroundColor: lightBackgroundColor,
              value: 0.55,
            ),
          )
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Do Something',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServicesitem(
                  iconUrl: 'assets/ic_topup.png',
                  title: 'Top Up',
                  onTap: () {
                    Navigator.pushNamed(context, 'topup');
                  }),
              HomeServicesitem(
                  iconUrl: 'assets/ic_send.png',
                  title: 'Send',
                  onTap: () {
                    Navigator.pushNamed(context, 'transfer');
                  }),
              HomeServicesitem(
                  iconUrl: 'assets/ic_withdraw.png',
                  title: 'Withdraw',
                  onTap: () {}),
              HomeServicesitem(
                  iconUrl: 'assets/ic_more.png',
                  title: 'More',
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const MoreDialog());
                  }),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat1.png',
                    title: 'Top Up',
                    time: 'Yesterday',
                    value: '+ ${formatCurrency(450000, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat2.png',
                    title: 'Cashback',
                    time: 'Sep 11',
                    value: '+ ${formatCurrency(22000, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat3.png',
                    title: 'Withdraw',
                    time: 'Sep 2',
                    value: '- ${formatCurrency(5000, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat4.png',
                    title: 'Transfer',
                    time: 'Aug 27',
                    value: '- ${formatCurrency(123500, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat5.png',
                    title: 'Electric',
                    time: 'Feb 18',
                    value: '- ${formatCurrency(12300000, symbol: '')}'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          const SizedBox(
            height: 14,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUseritem(
                    imageUrl: 'assets/img_friend1.png', userName: 'yuanita'),
                HomeUseritem(
                    imageUrl: 'assets/img_friend2.png', userName: 'jani'),
                HomeUseritem(
                    imageUrl: 'assets/img_friend3.png', userName: 'urip'),
                HomeUseritem(
                    imageUrl: 'assets/img_friend4.png', userName: 'masa')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const Center(
            child: Wrap(
              spacing: 17,
              runSpacing: 18,
              children: [
                HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'Best tips fot using a credit card',
                  url:
                      'https://www.notion.so/68pratama/My-Life-e6afeac887ee46a4bfe8c63315f140f1',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/img_tips2.png',
                  title: 'Spot the good pie of finance model',
                  url: 'https:www.google.com',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'Great hack to get better advices',
                  url: 'https:www.google.com',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
                  title: 'Save more penny buy this instead',
                  url: 'https:www.google.com',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
          height: 326,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: lightBackgroundColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Do More With Us',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  )),
              const SizedBox(height: 13),
              Wrap(
                spacing: 29,
                runSpacing: 25,
                children: [
                  HomeServicesitem(
                    iconUrl: 'assets/ic_product_data.png',
                    title: 'Data',
                    onTap: () {
                      Navigator.pushNamed(context, 'dataprovider');
                    },
                  ),
                  HomeServicesitem(
                    iconUrl: 'assets/ic_product_water.png',
                    title: 'Water',
                    onTap: () {},
                  ),
                  HomeServicesitem(
                    iconUrl: 'assets/ic_product_stream.png',
                    title: 'Stream',
                    onTap: () {},
                  ),
                  HomeServicesitem(
                    iconUrl: 'assets/ic_product_movie.png',
                    title: 'Movie',
                    onTap: () {},
                  ),
                  HomeServicesitem(
                    iconUrl: 'assets/ic_product_food.png',
                    title: 'Food',
                    onTap: () {},
                  ),
                  HomeServicesitem(
                    iconUrl: 'assets/ic_product_travel.png',
                    title: 'Travel',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
