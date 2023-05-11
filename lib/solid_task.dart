import 'dart:math';
import 'package:flutter/material.dart';

class SolidTask extends StatefulWidget {
  const SolidTask({super.key});

  @override
  State<SolidTask> createState() => _SolidTaskState();
}

class _SolidTaskState extends State<SolidTask> {
  Color backgroundColor = Colors.white;

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBackgroundColor,
      child: Container(
        color: backgroundColor,
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
