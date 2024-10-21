import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/screens/HomePage.dart';
import 'package:project/widgets/detels/SignIn.dart';
import 'package:project/widgets/detels/button.dart';
import 'package:project/widgets/detels/app_bar.dart';

class FristScreen extends StatefulWidget {
  static const Screen_Root = "home";
  const FristScreen({super.key});

  @override
  State<FristScreen> createState() => _LoinPageState();
}

class _LoinPageState extends State<FristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child: Image.asset("images/lm.png"),
            ),
            const SizedBox(height: 50),
            SignIn(
              title: AppLocalizations.of(context).translate("Enter your Email"),
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            SignIn(
              title:
                  AppLocalizations.of(context).translate("Enter your Password"),
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            MyButton(
              color: Colors.orange[400]!,
              title: AppLocalizations.of(context).translate("Sign in"),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomePage.Home_Page, (route) => false);
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
