import 'package:flutter/material.dart';
import 'package:project/localization/app_localizations.dart';
import 'package:project/widgets/detels/elmaints.dart';

class Program extends StatelessWidget {
  const Program(
      {super.key,
      required this.size,
      required this.prees,
      required this.itemidex,
      required this.elmaint});
  final Function(int, Elmaint) prees;
  final Size size;
  final int itemidex;
  final Elmaint elmaint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => prees(itemidex, elmaint),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            width: size.width,
            color: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Theme.of(context).textTheme.bodyLarge?.color,
              backgroundImage: AssetImage("images/lm.png"),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Text(
              elmaint.name,
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).textTheme.bodyLarge?.color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Text(
              AppLocalizations.of(context).translate("World Tv"),
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 200,
            height: 20,
            child: Divider(
              color: Colors.cyan[100],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Theme.of(context).primaryColor,
                width: size.width,
                child: Text(
                  elmaint.subtiltel,
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: Theme.of(context).primaryColor,
                width: size.width,
                child: Text(
                  elmaint.title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: size.width,
            height: 70,
            child: Divider(
              color: Colors.cyan[100],
            ),
          ),
        ],
      ),
    );
  }
}
