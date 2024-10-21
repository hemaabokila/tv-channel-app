import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';

class ProgramBody extends StatelessWidget {
  const ProgramBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/spo.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Sports"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/move.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Movies"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/history.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("History"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/news.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("News"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/docu.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Documentions"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/educ.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Education"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/econo.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Economy"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/spo.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Sports"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: AssetImage("images/move.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              width: size.width,
              child: Text(
                AppLocalizations.of(context).translate("Movies"),
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 20,
              child: Divider(
                color: Colors.cyan[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
