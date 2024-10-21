import 'package:flutter/material.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/elmaints.dart';
import 'package:project/widgets/detels/app_bar.dart';

class Prog extends StatefulWidget {
  static const Prog_Page = "prog";
  const Prog({super.key});

  @override
  State<Prog> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<Prog> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: const BottomApp(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: ListView.builder(
            itemCount: elmaint.length, itemBuilder: (context, index) {
              return null;
            }),
      ),
    );
  }
}
