import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/screens/ProgramGuidePage.dart';
import 'package:project/screens/Setting.dart';
import 'package:project/screens/UserRegistrationPage.dart';
import 'package:project/screens/EditAccountPage.dart';
import 'package:project/screens/LoginPage.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    foregroundColor: Theme.of(context).textTheme.bodyLarge?.color,
    title: Row(
      children: [
        Image.asset(
          "images/lm.png",
          height: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          AppLocalizations.of(context).translate("Tv Channel"),
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
              fontSize: 15),
        ),
      ],
    ),
    actions: <Widget>[
      PopupMenuButton<String>(
        onSelected: (String result) {
          if (result == "Login") {
            Navigator.pushNamed(context, FristScreen.Screen_Root);
          }
          if (result == "Sign up") {
            Navigator.pushNamed(context, RegistrationPage.Registration);
          }
          if (result == "Edit Account") {
            Navigator.pushNamed(context, EditAccount.edit_account);
          }
          if (result == "Setting") {
            Navigator.pushNamed(context, SettingPage.setting);
          }
          if (result == "Programs") {
            Navigator.pushNamed(context, ProgramGuidePage.ProgramGuide);
          }
        },
        color: Colors.white38,
        icon: Icon(Icons.menu),
        offset: Offset(0, 53),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'Login',
            child: ListTile(
              leading: Icon(
                Icons.login_sharp,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Login"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Sign up',
            child: ListTile(
              leading: Icon(
                Icons.app_registration_sharp,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Sign up"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Edit Account',
            child: ListTile(
              leading: Icon(
                Icons.manage_accounts,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Edit Account"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Programs',
            child: ListTile(
              leading: Icon(
                Icons.tv,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Programs"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Search',
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Search"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Notification',
            child: ListTile(
              leading: Icon(
                Icons.notification_add,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Notification"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Setting',
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Setting"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'Logout',
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("Logout"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'About',
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              title: Text(
                AppLocalizations.of(context).translate("About"),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
