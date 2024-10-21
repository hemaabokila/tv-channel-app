import 'package:flutter/material.dart';
import 'package:project/screens/ContentPage.dart';
import 'package:project/screens/AccountPage.dart';
import 'package:project/screens/HomePage.dart';
import 'package:project/screens/Programs.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
        onWillPop: () async {
          final List<String> bootomAppBarPages = [
            HomePage.Home_Page,
            ProgramsPage.Programpage,
            UserAccount.user_account,
            ContentPage.Content_Page
          ];
          String? currenRoute = ModalRoute.of(context)?.settings.name;
          if (currenRoute != null && bootomAppBarPages.contains(currenRoute)) {
            if (currenRoute == HomePage.Home_Page) {
              return true;
            } else {
              Navigator.pushNamedAndRemoveUntil(
                  context, HomePage.Home_Page, (route) => false);
              return false;
            }
          } else {
            return true;
          }
        },
        child: BottomAppBar(
          elevation: 0,
          color: Theme.of(context).scaffoldBackgroundColor,
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, HomePage.Home_Page, (route) => false);
                    },
                    icon: Icon(
                      Icons.home,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ProgramsPage.Programpage);
                    },
                    icon: Icon(
                      Icons.tv,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, UserAccount.user_account);
                    },
                    icon: Icon(
                      Icons.account_box,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ContentPage.Content_Page);
                    },
                    icon: Icon(
                      Icons.call,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
