import 'package:flutter/material.dart';
import 'package:project/widgets/detels/elmaints.dart';

class PupCard extends StatelessWidget {
  const PupCard(
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
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => prees(itemidex, elmaint),
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
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 65, vertical: 5),
                    color: Theme.of(context).primaryColor,
                    width: size.width,
                    child: Text(
                      elmaint.title,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/lm.png"),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 1),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            color: Theme.of(context).primaryColor,
            width: size.width,
            child: Text(
              "${elmaint.name}                                         November 29,2024",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
                fontSize: 10,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 1),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            color: Theme.of(context).primaryColor,
            width: size.width * 0.64,
            child: Text(
              elmaint.desc,
              maxLines: 2,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
