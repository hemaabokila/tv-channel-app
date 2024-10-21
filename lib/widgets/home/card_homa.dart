import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/elmaints.dart';
import 'package:project/widgets/detels/app_bar.dart';

class Crad_v extends StatelessWidget {
  const Crad_v({
    super.key,
    required this.elmaint,
  });
  final Elmaint elmaint;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: BottomApp(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 1,
              ),
              height: size.height * 0.26,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(elmaint.Image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                elmaint.title,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.sign_language_rounded,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          size: 15,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context).translate("Like"),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          size: 15,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context).translate("Comment"),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          size: 15,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context).translate("Share"),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.save_alt_sharp,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          size: 15,
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context).translate("Save"),
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 62, vertical: 10),
                  color: Theme.of(context).primaryColor,
                  width: size.width,
                  child: Text(
                    elmaint.name,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                      fontSize: 15,
                    ),
                  ),
                ),
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/hema.jpg"),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                "November 29,2024",
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontSize: 10,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 1),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              color: Theme.of(context).primaryColor,
              width: size.width,
              child: Text(
                elmaint.desc,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
