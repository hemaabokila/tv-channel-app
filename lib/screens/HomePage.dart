import 'package:flutter/material.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/home/card_homa.dart';
import 'package:project/widgets/detels/elmaints.dart';
import 'package:project/widgets/detels/app_bar.dart';
import 'package:project/widgets/home/home_body.dart';

class HomePage extends StatefulWidget {
  static const Home_Page = "/";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: const BottomApp(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: ListView.builder(
          itemCount: elmaint.length,
          itemBuilder: (context, index) => PupCard(
            size: size,
            itemidex: index,
            elmaint: elmaint[index],
            prees: (index, elmaint) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Crad_v(elmaint: elmaint),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
