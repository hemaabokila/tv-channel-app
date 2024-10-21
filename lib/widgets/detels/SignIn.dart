import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key, required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) {},
      style: TextStyle(color: color),
      decoration: InputDecoration(
        hintText: title,
        hintStyle: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color,),
        labelText: title,
        labelStyle: TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color,),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
