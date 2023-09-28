import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocs/auth/auth_bloc.dart';
import 'package:flutter_application_1/shared/share.dart';
import 'package:flutter_application_1/ui/pages/data_package_page.dart';
import 'package:flutter_application_1/ui/pages/data_provider_page.dart';
import 'package:flutter_application_1/ui/pages/data_success_page.dart';
import 'package:flutter_application_1/ui/pages/home_page.dart';
import 'package:flutter_application_1/ui/pages/onboarding_page.dart';
import 'package:flutter_application_1/ui/pages/pin_page.dart';
import 'package:flutter_application_1/ui/pages/profile_edit_page.dart';
import 'package:flutter_application_1/ui/pages/profile_edit_pin.dart';
import 'package:flutter_application_1/ui/pages/profile_edit_success.dart';
import 'package:flutter_application_1/ui/pages/profile_page.dart';
import 'package:flutter_application_1/ui/pages/sign_in_page.dart';
import 'package:flutter_application_1/ui/pages/sign_up_page.dart';
import 'package:flutter_application_1/ui/pages/sign_up_set_ktp_page%20.dart';
import 'package:flutter_application_1/ui/pages/sign_up_set_profile_page.dart';
import 'package:flutter_application_1/ui/pages/sign_up_success_page.dart';
import 'package:flutter_application_1/ui/pages/splashpage.dart';
import 'package:flutter_application_1/ui/pages/topup_amount_page.dart';
import 'package:flutter_application_1/ui/pages/topup_page.dart';
import 'package:flutter_application_1/ui/pages/topup_success.dart';
import 'package:flutter_application_1/ui/pages/transfer_amount_page.dart';
import 'package:flutter_application_1/ui/pages/transfer_page.dart';
import 'package:flutter_application_1/ui/pages/transfer_success_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: lightBackgroundColor,
              appBarTheme: AppBarTheme(
                  backgroundColor: lightBackgroundColor,
                  elevation: 0,
                  centerTitle: true,
                  iconTheme: IconThemeData(color: blackColor),
                  titleTextStyle: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold))),
          routes: {
            '/': (context) => const SplashPage(),
            'onboarding': (context) => const OnBoardingPage(),
            'signin': (context) => const SignInPage(),
            'signup': (context) => const SignUpPage(),
            'signupsetprofile': (context) => const SingUpSetProfile(),
            'signupsetktp': (context) => const SignUpSetKtp(),
            'signupsuccess': (context) => const SignUpSuccesUp(),
            'homepage': (context) => const HomePage(),
            'profile': (context) => const ProfilePage(),
            'pin': (context) => const PinPage(),
            'profileedit': (context) => const ProfileEditPage(),
            'profileeditpin': (context) => const ProfileEditPinPage(),
            'profileeditsuccess': (context) => const ProfileEditSuccessPage(),
            'topup': (context) => const TopUpPage(),
            'topupsuccess': (context) => const TopUpSuccessPage(),
            'topupamount': (context) => const TopUpAmountPage(),
            'transfer': (context) => const TrasnferPage(),
            'transferamount': (context) => const TransferAmountPage(),
            'transfersuccess': (context) => const TransferSuccessPage(),
            'dataprovider': (context) => const DataProviderPage(),
            'datapackage': (context) => const DataPackagePage(),
            'datasuccess': (context) => const DataSuccessPage()
          },
        ));
  }
}
