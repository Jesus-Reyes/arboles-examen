import 'package:flutter/material.dart';

class CirclesContainer extends StatelessWidget {
  const CirclesContainer({Key? key, required this.num}) : super(key: key);
  final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          "$num",
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
