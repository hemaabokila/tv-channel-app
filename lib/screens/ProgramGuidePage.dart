import 'package:flutter/material.dart';
import 'package:project/widgets/detels/bottom_app_par.dart';
import 'package:project/widgets/detels/app_bar.dart';
import 'package:project/widgets/detels/elmaints.dart';
import 'package:project/widgets/programs/card_program.dart';
import 'package:project/widgets/programs/program_body.dart';


class ProgramGuidePage extends StatefulWidget {
  static const ProgramGuide = "program";
  const ProgramGuidePage({super.key});

  @override
  State<ProgramGuidePage> createState() => _ProgramGuidePageState();
}

class _ProgramGuidePageState extends State<ProgramGuidePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: HomeAppBar(context),
      bottomNavigationBar: BottomApp(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: ListView.builder(
          itemCount: elmaint.length,
          itemBuilder: (context, index) => Program(
            size: size,
            itemidex: index,
            elmaint: elmaint[index],
            prees: (index, elmaint) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramCard(elmaint: elmaint),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
