import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/screens/EditAccountPage.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/app_bar.dart';

class UserAccount extends StatefulWidget {
  static const user_account = "useraccount";
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: const BottomApp(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 65, vertical: 10),
                      color: Theme.of(context).primaryColor,
                      width: size.width,
                      child: Text(
                        "Ibrahem Abokila",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      color: Theme.of(context).primaryColor,
                      width: size.width,
                      child: Text(
                        "ibrahemabokila@tvchanel.com",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/hema.jpg"),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, EditAccount.edit_account);
                        },
                        icon: Icon(
                          Icons.manage_accounts,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          size: 25,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context).translate("Edit Acccount"),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          size: 25,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context).translate("Messages"),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Icon(
                      Icons.comment,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
                    child: Text(
                      AppLocalizations.of(context).translate("Your Comments"),
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Row(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                "Comment 1",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                "Comment 2",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                "Comment 3",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                "Comment 4",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
