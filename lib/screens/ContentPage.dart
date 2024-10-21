import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentPage extends StatefulWidget {
  static const Content_Page = "content";
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse('tel:+021020687061');
    final Uri url1 = Uri.parse('mailto:ibrahemabokila@gmail.com');
    final Uri url2 = Uri.parse('https://www.facebook.com/ibrahimhelal22');
    final Uri url3 = Uri.parse('https://www.youtube.com/@cryptodome22');
    final Uri url4 = Uri.parse('https://github.com/hemaabokila');

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: BottomApp(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
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
                  color: Colors.grey.shade300,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
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
                leading: Icon(
                  Icons.phone_iphone,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                onTap: () async {
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                title: Text(
                  "WhatsApp",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                onTap: () async {
                  if (!await launchUrl(url1)) {
                    throw Exception('Could not launch $url1');
                  }
                },
                title: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Icon(
                  Icons.facebook,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                onTap: () async {
                  if (!await launchUrl(url2)) {
                    throw Exception('Could not launch $url2');
                  }
                },
                title: Text(
                  "Facebook",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Icon(
                  Icons.video_file,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                onTap: () async {
                  if (!await launchUrl(url3)) {
                    throw Exception('Could not launch $url3');
                  }
                },
                title: Text(
                  "YouTube",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
              color: Theme.of(context).primaryColor,
              child: ListTile(
                leading: Icon(
                  Icons.web_asset,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                onTap: () async {
                  if (!await launchUrl(url4)) {
                    throw Exception('Could not launch $url4');
                  }
                },
                title: Text(
                  "WebSite",
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
