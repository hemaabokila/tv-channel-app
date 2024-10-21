import 'package:flutter/material.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';

import 'package:project/widgets/detels/app_bar.dart';
import 'package:project/widgets/programs/brograms_body.dart';

class ProgramsPage extends StatefulWidget {
  static const Programpage = "programs";
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: HomeAppBar(context),
        bottomNavigationBar: BottomApp(),
        body: ProgramBody(
          size: size,
        ));
  }
}
