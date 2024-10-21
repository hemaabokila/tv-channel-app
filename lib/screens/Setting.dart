import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/main.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/app_bar.dart';

class SettingPage extends StatefulWidget {
  static const setting = "setting";
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: BottomApp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/lm.png"),
                  ),
                  Text(
                    AppLocalizations.of(context).translate("Tv Channel"),
                    style: TextStyle(
                      fontSize: 38,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).translate("World Tv"),
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                title: Text(
                  AppLocalizations.of(context).translate("Language"),
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
                leading: PopupMenuButton<String>(
                  onSelected: (String result) {
                    if (result == 'Arabic') {
                      MyApp.setLocale(context, Locale('ar'));
                    } else if (result == 'English') {
                      MyApp.setLocale(context, Locale('en'));
                    }
                  },
                  color: Theme.of(context).scaffoldBackgroundColor,
                  icon: Icon(
                    Icons.language,
                    size: 40,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                  offset: const Offset(0, 53),
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'English',
                      child: ListTile(
                        leading: Icon(
                          Icons.abc,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          AppLocalizations.of(context).translate("English"),
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'Arabic',
                      child: ListTile(
                        leading: Icon(
                          Icons.abc,
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          AppLocalizations.of(context).translate("Arabic"),
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge?.color,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  size: 40,
                ),
                onTap: () {
                  MyApp.toggleTheme(context);
                },
                title: Text(
                  AppLocalizations.of(context).translate("Dark Mode"),
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
