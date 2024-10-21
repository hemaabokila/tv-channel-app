import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/widgets/detels/SignIn.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/button.dart';
import 'package:project/widgets/detels/app_bar.dart';

class EditAccount extends StatefulWidget {
  static const edit_account = "aditaccount";
  const EditAccount({super.key});

  @override
  State<EditAccount> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: const BottomApp(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/hema.jpg"),
            ),
            const SizedBox(height: 50),
            const SignIn(
              title: "ibrahem abkila",
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const SignIn(
              title: "ibrahemabokila@tvchanel.com",
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const SignIn(
              title: "+21020687061",
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            const SignIn(
              title: "********",
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            MyButton(
              color: Colors.red[800]!,
              title: AppLocalizations.of(context).translate("Edit"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
